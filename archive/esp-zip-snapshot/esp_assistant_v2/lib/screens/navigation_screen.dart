import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:image/image.dart' as img;
import '../services/video_service.dart';
import '../services/multi_model_service.dart';
import '../services/tts_service.dart';
import '../services/depth_estimator.dart';
import '../models/base_model.dart';

class NavigationScreen extends StatefulWidget {
  final String espIP;
  const NavigationScreen({Key? key, required this.espIP}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  late VideoService _video;
  late MultiModelService _model;
  late TTSService _tts;
  late DepthEstimator _depthEstimator;

  Uint8List? _currentFrame;
  bool _isStreaming = false;
  bool _isLoading = true;
  int _displayFps = 0;
  int _frameCount = 0;
  DateTime? _lastFpsUpdate;

  bool _isAnalyzing = false;
  String _lastGuidance = '';
  int _frameCounter = 0;
  final int _inferenceInterval = 15; 

  bool _blindRoadEnabled = true;      
  bool _trafficLightEnabled = true;   
  bool _depthEnabled = true;          
  bool _objectDetectionEnabled = true; // 新增：物体识别开关

  List<DetectionResult> _detections = []; // 新增：保存检测结果用于绘制

  img.Image? _depthPreview;
  bool _isDepthAnalyzing = false;
  final AudioPlayer _audioPlayer = AudioPlayer();
  DateTime? _lastAlarmTime;
  static const int _alarmCooldownMs = 500;
  String _warningMessage = '';  

  int _dangerThreshold = 200;
  double _dangerRatio = 0.15;
  int _roiStartX = 38;
  int _roiEndX = 217;
  int _roiStartY = 25;
  int _roiEndY = 128;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    _video = VideoService(espIP: widget.espIP);
    _model = MultiModelService();
    _tts = TTSService();
    _depthEstimator = DepthEstimator();

    _video.frameStream.listen(_onFrameReceived, onError: (err) {
      print('❌ 视频帧错误: $err');
    });

    await _tts.init();
    await _model.init();
    await _depthEstimator.load();
    
    _video.start();
    setState(() {
      _isStreaming = true;
    });
  }

  void _onFrameReceived(Uint8List frame) {
    setState(() {
      _currentFrame = frame;
      _isLoading = false;
    });

    _frameCount++;
    final now = DateTime.now();
    if (_lastFpsUpdate == null) {
      _lastFpsUpdate = now;
    } else if (now.difference(_lastFpsUpdate!).inMilliseconds >= 1000) {
      setState(() {
        _displayFps = _frameCount;
        _frameCount = 0;
      });
      _lastFpsUpdate = now;
    }

    _frameCounter++;
    if (_frameCounter >= _inferenceInterval) {
      _frameCounter = 0;
      
      if (_blindRoadEnabled || _trafficLightEnabled || _objectDetectionEnabled) {
        _analyzeFrame(frame);
      }
      
      if (_depthEnabled) {
        _analyzeDepth(frame);
      }
    }
  }

  Future<void> _analyzeFrame(Uint8List frame) async {
    if (_isAnalyzing) return;
    _isAnalyzing = true;
    try {
      final result = await _model.analyze(frame, 
        enableBlindRoad: _blindRoadEnabled,
        enableTrafficLight: _trafficLightEnabled,
        enableObjectDetection: _objectDetectionEnabled,
      );
      
      setState(() {
        _detections = result.detections;
      });

      final guidance = result.combinedGuidance;
      if (guidance.isNotEmpty && guidance != _lastGuidance) {
        _lastGuidance = guidance;
        await _tts.speak(guidance);
      }
    } catch (e) {
      print('推理错误: $e');
    } finally {
      _isAnalyzing = false;
    }
  }

  Future<void> _analyzeDepth(Uint8List frame) async {
    if (_isDepthAnalyzing) return;
    _isDepthAnalyzing = true;
    try {
      final img.Image? original = img.decodeImage(frame);
      if (original == null) return;

      final depthImage = await _depthEstimator.estimateDepth(original);
      final preview = img.copyResize(depthImage, width: 120, height: 120);
      setState(() {
        _depthPreview = preview;
      });
      
      final obstacle = _depthEstimator.checkObstacle(
        depthImage,
        dangerThreshold: _dangerThreshold,
        dangerRatio: _dangerRatio,
        startX: _roiStartX, endX: _roiEndX,
        startY: _roiStartY, endY: _roiEndY,
      );
      
      if (obstacle) _triggerAlarm();
    } catch (e) {
      print('深度分析错误: $e');
    } finally {
      _isDepthAnalyzing = false;
    }
  }

  void _triggerAlarm() {
    final now = DateTime.now();
    if (_lastAlarmTime == null ||
        now.difference(_lastAlarmTime!).inMilliseconds > _alarmCooldownMs) {
      _lastAlarmTime = now;
      setState(() {
        _warningMessage = '⚠️ 前方有障碍物！';
      });
      Future.delayed(Duration(seconds: 3), () {
        if (mounted && _warningMessage == '⚠️ 前方有障碍物！') {
          setState(() { _warningMessage = ''; });
        }
      });
    }
  }

  void _toggleStream() {
    if (_isStreaming) {
      _video.stop();
      setState(() {
        _isStreaming = false;
        _currentFrame = null;
      });
    } else {
      _video.start();
      setState(() {
        _isStreaming = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('智能寻物导航'),
        backgroundColor: Colors.black87,
        actions: [
          Center(child: Text('${_displayFps}fps  ', style: TextStyle(color: Colors.white70))),
          PopupMenuButton<String>(
            icon: Icon(Icons.settings, color: Colors.white),
            onSelected: (value) {
              setState(() {
                if (value == 'blind') _blindRoadEnabled = !_blindRoadEnabled;
                if (value == 'traffic') _trafficLightEnabled = !_trafficLightEnabled;
                if (value == 'object') _objectDetectionEnabled = !_objectDetectionEnabled;
                if (value == 'depth') _depthEnabled = !_depthEnabled;
              });
            },
            itemBuilder: (context) => [
              _buildPopupItem('盲道识别', _blindRoadEnabled, 'blind'),
              _buildPopupItem('红绿灯识别', _trafficLightEnabled, 'traffic'),
              _buildPopupItem('识物寻物', _objectDetectionEnabled, 'object'),
              _buildPopupItem('深度避障', _depthEnabled, 'depth'),
            ],
          ),
          IconButton(
            icon: Icon(_isStreaming ? Icons.stop : Icons.play_arrow, color: Colors.white),
            onPressed: _toggleStream,
          ),
        ],
      ),
      body: Stack(
        children: [
          // 视频主体
          Center(
            child: AspectRatio(
              aspectRatio: 1.0, // 假设输入是正方形或根据实际调整
              child: Stack(
                children: [
                  if (_currentFrame != null) Image.memory(_currentFrame!, fit: BoxFit.contain),
                  // 绘制检测框
                  CustomPaint(
                    painter: DetectionPainter(detections: _detections),
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
          
          if (_warningMessage.isNotEmpty)
            Positioned(
              top: 50, left: 0, right: 0,
              child: Container(
                padding: EdgeInsets.all(12),
                color: Colors.red.withOpacity(0.8),
                child: Center(child: Text(_warningMessage, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))),
              ),
            ),

          // 识别状态提示
          Positioned(
            bottom: 20, left: 20,
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.black54,
              child: Text(_lastGuidance, style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
            ),
          ),

          if (_depthEnabled && _depthPreview != null)
            Positioned(
              bottom: 10, right: 10,
              child: Container(
                width: 100, height: 100,
                decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                child: Image.memory(Uint8List.fromList(img.encodePng(_depthPreview!)), fit: BoxFit.cover),
              ),
            ),

          if (_isLoading) Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }

  PopupMenuItem<String> _buildPopupItem(String title, bool val, String key) {
    return PopupMenuItem(value: key, child: Row(children: [Icon(val ? Icons.check_box : Icons.check_box_outline_blank), SizedBox(width: 8), Text(title)]));
  }
}

class DetectionPainter extends CustomPainter {
  final List<DetectionResult> detections;
  DetectionPainter({required this.detections});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    for (var det in detections) {
      // 区分颜色
      if (det.modelName == 'hand') {
        paint.color = Colors.blue;
      } else if (det.label == 'blind_road') {
        paint.color = Colors.yellow;
      } else {
        paint.color = Colors.green;
      }

      final rect = Rect.fromLTRB(
        det.boundingBox.left * size.width,
        det.boundingBox.top * size.height,
        det.boundingBox.right * size.width,
        det.boundingBox.bottom * size.height,
      );
      canvas.drawRect(rect, paint);

      // 绘制标签
      final textPainter = TextPainter(
        text: TextSpan(
          text: '${det.label} ${(det.confidence * 100).toStringAsFixed(0)}%',
          style: TextStyle(color: paint.color, fontSize: 12, backgroundColor: Colors.black54),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      textPainter.paint(canvas, Offset(rect.left, rect.top - 15));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
