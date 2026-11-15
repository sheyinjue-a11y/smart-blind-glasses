import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_onnxruntime/flutter_onnxruntime.dart';
import 'package:image/image.dart' as img;

class DetectionResult {
  final String label;
  final double confidence;
  final Rect boundingBox;

  DetectionResult({
    required this.label,
    required this.confidence,
    required this.boundingBox,
  });

  Offset get center => Offset(
        boundingBox.left + boundingBox.width / 2,
        boundingBox.top + boundingBox.height / 2,
      );
}

class ModelManager {
  OrtSession? _session;
  OnnxRuntime? _ort;
  bool _isLoaded = false;

  // COCO 前 33 个类别（根据模型实际调整）
  final List<String> _labels = [
    'person', 'bicycle', 'car', 'motorcycle', 'airplane', 'bus', 'train', 'truck', 'boat',
    'traffic light', 'fire hydrant', 'stop sign', 'parking meter', 'bench', 'bird', 'cat',
    'dog', 'horse', 'sheep', 'cow', 'elephant', 'bear', 'zebra', 'giraffe', 'backpack',
    'umbrella', 'handbag', 'tie', 'suitcase', 'frisbee', 'skis', 'snowboard', 'sports ball',
  ];

  Future<void> init() async {
    if (_isLoaded) return;

    try {
      final modelPath = await _getModelPath();
      print('📁 模型路径: $modelPath');
      _ort = OnnxRuntime();
      _session = await _ort!.createSession(modelPath);
      _isLoaded = true;
      print('✅ 模型加载成功');
    } catch (e) {
      print('❌ 模型加载失败: $e');
      _isLoaded = true;
    }
  }

  Future<String> _getModelPath() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/yolo-seg.onnx');

    if (!await file.exists()) {
      print('📦 从 assets 复制模型文件...');
      final data = await rootBundle.load('assets/models/yolo-seg.onnx');
      await file.writeAsBytes(data.buffer.asUint8List());
      print('✅ 模型文件复制完成');
    }
    return file.path;
  }

  Future<List<DetectionResult>> detect(Uint8List imageBytes) async {
    if (!_isLoaded || _session == null) {
      return [];
    }

    try {
      img.Image? image = img.decodeImage(imageBytes);
      if (image == null) return [];

      const int inputSize = 320;
      img.Image resized = img.copyResize(image, width: inputSize, height: inputSize);

      const int channels = 3;
      const int height = inputSize;
      const int width = inputSize;
      List<double> tensorData = List.filled(1 * channels * height * width, 0.0);

      for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
          var pixel = resized.getPixel(x, y);
          double r = pixel.r / 255.0;
          double g = pixel.g / 255.0;
          double b = pixel.b / 255.0;

          int idxR = (0 * height + y) * width + x;
          int idxG = (1 * height + y) * width + x;
          int idxB = (2 * height + y) * width + x;

          tensorData[idxR] = r;
          tensorData[idxG] = g;
          tensorData[idxB] = b;
        }
      }

      final inputs = {
        'images': await OrtValue.fromList(tensorData, [1, channels, height, width]),
      };

      final outputs = await _session!.run(inputs);
      final outputValue = outputs['output0'];
      if (outputValue == null) return [];

      // 获取嵌套数据并展平
      final nested = await outputValue.asList();
      List<double> raw = _flattenToDouble(nested);

      return _parseDetections(raw);
    } catch (e) {
      print('❌ 推理错误: $e');
      return [];
    }
  }

  List<DetectionResult> _parseDetections(List<double> raw) {
    print('🔍 _parseDetections 被调用，数据长度: ${raw.length}');

    const int numDetections = 2100;
    const int numValues = 38;
    const int numClasses = 33;

    if (raw.length < numDetections * numValues) {
      print('⚠️ 数据长度不足');
      return [];
    }

    List<DetectionResult> detections = [];

    for (int i = 0; i < numDetections; i++) {
      int offset = i * numValues;
      double cx = raw[offset];
      double cy = raw[offset + 1];
      double w = raw[offset + 2];
      double h = raw[offset + 3];

      // 找出最佳类别
      double bestScore = 0;
      int bestClass = 0;
      for (int c = 0; c < numClasses; c++) {
        double score = raw[offset + 5 + c];
        if (score > bestScore) {
          bestScore = score;
          bestClass = c;
        }
      }

      // 置信度直接使用类别分数
      double confidence = bestScore.clamp(0.0, 1.0);
      // 临时降低阈值以观察是否有物体
      if (confidence < 0.3) continue;

      double x1 = (cx - w / 2).clamp(0.0, 1.0);
      double y1 = (cy - h / 2).clamp(0.0, 1.0);
      double x2 = (cx + w / 2).clamp(0.0, 1.0);
      double y2 = (cy + h / 2).clamp(0.0, 1.0);

      if (x2 - x1 < 0.01 || y2 - y1 < 0.01) continue;

      String label = bestClass < _labels.length ? _labels[bestClass] : 'object';

      detections.add(DetectionResult(
        label: label,
        confidence: confidence,
        boundingBox: Rect.fromLTRB(x1, y1, x2, y2),
      ));
    }

    print('原始检测数: ${detections.length}');

    // 按置信度排序
    detections.sort((a, b) => b.confidence.compareTo(a.confidence));

    // 非极大值抑制
    List<DetectionResult> nmsResults = [];
    for (var det in detections) {
      bool keep = true;
      for (var kept in nmsResults) {
        if (_iou(det.boundingBox, kept.boundingBox) > 0.45) {
          keep = false;
          break;
        }
      }
      if (keep) nmsResults.add(det);
    }

    // 限制最多 5 个
    const int maxResults = 5;
    if (nmsResults.length > maxResults) {
      nmsResults = nmsResults.sublist(0, maxResults);
    }

    print('✅ 最终检测到 ${nmsResults.length} 个物体');
    return nmsResults;
  }

  List<double> _flattenToDouble(dynamic list) {
    List<double> result = [];
    if (list is List) {
      for (var item in list) {
        result.addAll(_flattenToDouble(item));
      }
    } else if (list is num) {
      result.add(list.toDouble());
    }
    return result;
  }

  double _iou(Rect a, Rect b) {
    double x1 = a.left > b.left ? a.left : b.left;
    double y1 = a.top > b.top ? a.top : b.top;
    double x2 = a.right < b.right ? a.right : b.right;
    double y2 = a.bottom < b.bottom ? a.bottom : b.bottom;
    double intersection = (x2 - x1).clamp(0.0, 1.0) * (y2 - y1).clamp(0.0, 1.0);
    double areaA = a.width * a.height;
    double areaB = b.width * b.height;
    double union = areaA + areaB - intersection;
    if (union <= 0) return 0;
    return intersection / union;
  }

  void dispose() {
    _session = null;
    _ort = null;
    _isLoaded = false;
  }
}