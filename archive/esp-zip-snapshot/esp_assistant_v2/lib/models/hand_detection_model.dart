/*import 'dart:typed_data';
import 'dart:ui';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image/image.dart' as img;
import 'base_model.dart';

class HandDetectionModel {
  HandLandmarker? _handLandmarker;

  Future<void> load() async {
    // 使用默认模型（无需 .task 文件）
    final options = HandLandmarkerOptions(
      staticMode: false,
      numHands: 2,
      minHandDetectionConfidence: 0.5,
      minTrackingConfidence: 0.5,
    );
    _handLandmarker = await HandLandmarker.fromOptions(options);
  }

  Future<List<DetectionResult>> predict(Uint8List imageBytes) async {
    if (_handLandmarker == null) return [];

    // 解码图像获取尺寸
    final img.Image? original = img.decodeImage(imageBytes);
    if (original == null) return [];

    // 构建 InputImage（假设 imageBytes 是 NV21 格式，实际需从摄像头获取，这里简化）
    final inputImage = InputImage.fromBytes(
      bytes: imageBytes,
      inputImageData: InputImageData(
        size: Size(original.width.toDouble(), original.height.toDouble()),
        imageRotation: InputImageRotation.rotation0deg,
        inputImageFormat: InputImageFormat.nv21,
      ),
    );

    final result = await _handLandmarker!.processImage(inputImage);

    final List<DetectionResult> detections = [];
    for (final hand in result.handLandmarks) {
      // 计算边界框
      double minX = 1, minY = 1, maxX = 0, maxY = 0;
      for (final lm in hand) {
        minX = minX < lm.x ? minX : lm.x;
        minY = minY < lm.y ? minY : lm.y;
        maxX = maxX > lm.x ? maxX : lm.x;
        maxY = maxY > lm.y ? maxY : lm.y;
      }
      final box = Rect.fromLTWH(minX, minY, maxX - minX, maxY - minY);
      detections.add(DetectionResult(
        modelName: 'hand',
        label: 'hand',
        confidence: 0.9,
        boundingBox: box,
        extra: {'type': 'unknown'}, // 可扩展
      ));
    }
    return detections;
  }

  void dispose() {
    _handLandmarker?.close();
  }
}*/