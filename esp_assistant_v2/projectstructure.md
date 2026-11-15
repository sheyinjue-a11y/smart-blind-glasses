# 新项目结构

本文档用于梳理当前 Flutter + Kotlin 混合工程的文件职责和模块接口，作为后续改造和补写逻辑的参考。

## 1. 总体分层

- `lib/`：Flutter UI、状态管理、模型封装、服务编排。
- `android/app/src/main/kotlin/com/example/esp_assistant_v2/`：原生图像处理、模型推理、导航工作流、NMS 和轻量状态机。
- `assets/models/`：ONNX / TFLite 模型文件。
- `legacy_python_ref/core_files/`：旧 Python 服务端与网页前端参考实现，只读对照，不作为当前运行入口。

## 2. Flutter 与 Kotlin 职责边界（半成品现状）

### Flutter 负责
- 页面与交互：连接页、导航页、可视化叠加、状态文案展示。
- 应用编排：服务初始化、生命周期管理、权限申请、任务开关。
- 数据流入口：接收 ESP32 视频流并拆帧，向上层提供统一帧流。
- 端内推理与融合：在 Dart 层并行调度盲道、红绿灯、目标检测、深度估计并合成引导语。
- 语音输出：TTS 播报与节流控制。
- 原生桥接抽象：通过 `MethodChannel/EventChannel` 封装调用与状态订阅接口。

### Kotlin 负责
- Android 原生算法与性能敏感处理：`Bitmap` 转换、后处理/NMS、障碍判断等底层计算。
- 导航工作流状态机：盲道、过街、寻物等流程逻辑与方向建议计算。
- 原生模型接口层：统一各模型检测器接口，承接 ONNX/TFLite 等运行时接入。
- 结果结构标准化：统一原生检测结果字段，供上层桥接消费。

### 当前半成品边界说明
- 当前项目以 Flutter 侧编排为主，Kotlin 侧已具备算法与接口骨架，但桥接调度尚未完全闭环。
- `MainActivity.kt` 仍为默认 `FlutterActivity`，说明原生通道入口与完整调度链仍在补齐阶段。
- 维护上应优先在 Flutter 做流程联调，在 Kotlin 做算法和高性能模块逐步实装。

## 3. Flutter 层文件

### [lib/main.dart](lib/main.dart)
- 作用：应用入口。
- 职责：初始化 Flutter、申请麦克风权限、启动应用。
- 接口：`main()`，`MyApp.build()`。
- 输出：进入 [lib/screens/connection_screen.dart](lib/screens/connection_screen.dart)。

### [lib/screens/connection_screen.dart](lib/screens/connection_screen.dart)
- 作用：设备连接页。
- 职责：接收 ESP32 IP，跳转导航页。
- 接口：`ConnectionScreen`，内部按钮回调将 `espIP` 传给 `NavigationScreen`。

### [lib/screens/navigation_screen.dart](lib/screens/navigation_screen.dart)
- 作用：主业务页。
- 职责：串联视频流、模型推理、TTS、深度估计和 UI 展示。
- 关键接口：
  - `AppWorkflow`：`obstacle` / `seeking` / `road` / `cloud`
  - `initState()` / `_init()`：初始化服务
  - `_onFrameReceived(Uint8List)`：接收视频帧
  - `_analyzeFrame(Uint8List)`：执行多模型推理
  - `_analyzeDepth(Uint8List)`：执行深度估计与障碍判断
  - `dispose()`：释放资源
- 依赖：`VideoService`、`MultiModelService`、`TTSService`、`DepthEstimator`。

### [lib/models/base_model.dart](lib/models/base_model.dart)
- 作用：统一检测结果数据结构。
- 接口：`DetectionResult`。
- 字段：`modelName`、`label`、`confidence`、`boundingBox`、`landmarks`、`extra`。
- 便捷属性：`center`。

### [lib/models/navigation_state.dart](lib/models/navigation_state.dart)
- 作用：导航状态与可视化元素的数据模型。
- 接口：
  - `VisualElement`：`maskOverlay`、`polyline`、`circle`、`rectangle`、`arrow`、`dashedLine`、`angleArc`、`textWithBg`、`dataPanel`、`outline`、`doubleArrow`
  - `NavigationState`
- 关键字段：`currentOverallState`、`currentBlindPathSubState`、`guidanceText`、`visualizations`、`stateDetails`、`isBusy`、`errorMessage`
- 说明：这是 Freezed + JSON 序列化模型，依赖生成文件 [lib/models/navigation_state.freezed.dart](lib/models/navigation_state.freezed.dart) 和 [lib/models/navigation_state.g.dart](lib/models/navigation_state.g.dart)。

### [lib/models/blind_road_model.dart](lib/models/blind_road_model.dart)
- 作用：盲道/斑马线分割模型封装。
- 接口：`load()`、`predict(Uint8List)`、`dispose()`。
- 输出：`List<DetectionResult>`。

### [lib/models/traffic_light_model.dart](lib/models/traffic_light_model.dart)
- 作用：红绿灯检测模型封装。
- 接口：`load()`、`predict(Uint8List)`、`dispose()`。
- 输出：`List<DetectionResult>`，标签为 `red` / `yellow` / `green`。

### [lib/models/yolo_world_model.dart](lib/models/yolo_world_model.dart)
- 作用：开放词汇目标检测封装。
- 接口：`load()`、`predict(Uint8List)`、`dispose()`。
- 说明：内部委托 [lib/models/model_manager.dart](lib/models/model_manager.dart)。

### [lib/models/hand_detection_model.dart](lib/models/hand_detection_model.dart)
- 作用：手部检测占位封装。
- 接口：`load()`、`predict(Uint8List)`、`dispose()`。
- 当前状态：`predict()` 返回空列表，主要用于流程占位。

### [lib/models/model_manager.dart](lib/models/model_manager.dart)
- 作用：YOLO 通用检测模型管理器。
- 接口：`init()`、`detect(Uint8List)`、`dispose()`。
- 内部辅助：`_getModelPath()`、`_parseDetections()`、`_flattenToDouble()`、`_iou()`。
- 说明：这里的 `DetectionResult` 是本文件内的局部结果类，和 `base_model.dart` 中的通用结果并不相同。

### [lib/services/video_service.dart](lib/services/video_service.dart)
- 作用：从 ESP32 HTTP MJPEG 流中拆帧。
- 接口：`frameStream`、`start()`、`stop()`、`dispose()`。
- 说明：输出 `Uint8List` 帧，供导航页实时渲染和推理。

### [lib/services/multi_model_service.dart](lib/services/multi_model_service.dart)
- 作用：并行调度多个模型并生成综合引导语。
- 接口：`init()`、`analyze(Uint8List, {enableBlindRoad, enableTrafficLight, enableObjectDetection})`、`dispose()`。
- 返回：`NavigationResult`。
- `NavigationResult` 字段：`blindGuidance`、`trafficGuidance`、`objectGuidance`、`detections`。
- 便捷属性：`combinedGuidance`。

### [lib/services/navigation_service.dart](lib/services/navigation_service.dart)
- 作用：Flutter 侧的导航桥接与状态监听层。
- 接口：
  - 状态：`state`
  - 调度：`startBlindPathNavigation()`、`stopNavigation()`、`startCrossing()`、`startTrafficLightDetection()`、`startItemSearch()`、`stopItemSearch()`、`sendVoiceCommand(String)`、`forceState(String)`
  - 播报：`speakText(String)`
- 说明：通过 `MethodChannel` 和 `EventChannel` 与 Kotlin 通信。
- 通道名：`com.example.esp_assistant_v2/navigation_methods`、`com.example.esp_assistant_v2/navigation_events`。
- 状态常量：`STATE_ONBOARDING`、`STATE_NAVIGATING`、`STATE_MANEUVERING_TURN`、`STATE_AVOIDING_OBSTACLE`、`STATE_LOCKING_ON`、`STATE_UNKNOWN`。

### [lib/services/depth_estimator.dart](lib/services/depth_estimator.dart)
- 作用：MiDaS 深度估计封装。
- 接口：`load()`、`estimateDepth(img.Image)`、`checkObstacle(...)`、`dispose()`。
- 输入尺寸：`256`。

### [lib/services/tts_service.dart](lib/services/tts_service.dart)
- 作用：Flutter TTS 播放。
- 接口：`init()`、`speak(String)`、`dispose()`。

### [lib/services/model_loader.dart](lib/services/model_loader.dart)
- 作用：从 assets 拷贝 ONNX 文件并创建 `OrtSession`。
- 接口：`loadModel(String assetPath)`。

### [lib/utils/image_utils.dart](lib/utils/image_utils.dart)
- 作用：图像解码与张量转换。
- 接口：`decodeImage(Uint8List)`、`resize(img.Image, int, int)`、`imageToCHW(img.Image, int)`、`flatten(dynamic)`。

## 4. Android 原生层文件

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/MainActivity.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/MainActivity.kt)
- 作用：Flutter 原生入口。
- 接口：`MainActivity : FlutterActivity`。
- 说明：当前没有自定义桥接逻辑。

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/ModelInterfaces.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/ModelInterfaces.kt)
- 作用：模型统一接口定义。
- 接口：
  - `BlindPathSegmenter`
  - `YoloWorldDetector`
  - `TrafficLightDetector`
  - `HandLandmarker`
  - `MidasDepthEstimator`
- 通用方法：`loadModel(context, modelPath, useGPU)`、检测方法、`close()`。

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/DetectorResult.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/DetectorResult.kt)
- 作用：原生检测结果结构。
- 接口：`DetectionResult`。
- 字段：`className`、`confidence`、`rect`、`score`。

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/BitmapUtils.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/BitmapUtils.kt)
- 作用：Bitmap 与浮点数组互转。
- 接口：`bitmapToFloatArray(Bitmap)`、`floatArrayToBitmap(FloatArray, Int, Int)`。

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/ObstacleDetector.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/ObstacleDetector.kt)
- 作用：障碍物近距离判断。
- 接口：
  - `isNearObstacle(DetectionResult, imageWidth, imageHeight)`
  - `isNearObstacle(FloatArray, threshold)`

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/YoloPostProcessor.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/YoloPostProcessor.kt)
- 作用：YOLO 输出后处理与 NMS。
- 接口：`processOutput(outputs, inputBitmap, confidenceThreshold, iouThreshold)`。
- 内部辅助：`parseDetections()`、`applyNonMaxSuppression()`、`calculateIOU()`。
- 说明：当前解析逻辑还是框架化接口，后续可补齐具体输出解析。

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/BlindPathNavigator.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/BlindPathNavigator.kt)
- 作用：盲道导航状态机。
- 接口：
  - 状态字段：`currentState`、`onboardingStep`、`maneuverStep`
  - 核心方法：`executeStateMachine(...)`
  - 特征提取：`getPixelDomainFeatures(mask)`
- 内部数据：`CenterPoint`、`PathFeatures`
- 说明：对应旧 Python `workflow_blindpath.py`。

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/CrossStreetNavigator.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/CrossStreetNavigator.kt)
- 作用：过马路导航逻辑。
- 接口：`computeAlignment(crosswalkMask, imageWidth, imageHeight)`、`shouldEndCrossing(...)`。
- 说明：对应旧 Python `workflow_crossstreet.py`。

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/YoloMediaProcessor.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/YoloMediaProcessor.kt)
- 作用：寻物交互逻辑。
- 接口：
  - 状态属性：`handToTargetDirection`
  - 处理方法：`processResults(detections, imageWidth, imageHeight)`
  - 深度判断：`isNearObstacle(depthMap, threshold)`
  - 辅助：`getDirectionSuggestion(depthMap, width, height)`
- 返回：`ProcessedResults`、`ProcessedItem`。

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/RealModels.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/RealModels.kt)
- 作用：模型实现占位层。
- 类：
  - `RealBlindPathSegmenter`
  - `RealYoloWorldDetector`
  - `RealTrafficLightDetector`
  - `RealHandLandmarker`
  - `RealMidasDepthEstimator`
- 共同接口：`loadModel()`、检测/估计方法、`close()`。
- 当前状态：多数组合方法为占位实现，返回空结果或原图。

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/NavigationHandler.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/NavigationHandler.kt)
- 作用：原生模型实例持有者。
- 接口：`initializeModels()`。
- 说明：当前只负责把各 `Real*` 模型初始化起来，没有完整状态机调度。

### [android/app/src/main/kotlin/com/example/esp_assistant_v2/StringUtils.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/StringUtils.kt)
- 作用：方向字符串转中文描述。
- 接口：扩展函数 `String.toCnDirection()`。

## 5. 数据流关系

### 视频与推理
- [lib/services/video_service.dart](lib/services/video_service.dart) 负责从 ESP32 拉流并拆帧。
- [lib/services/multi_model_service.dart](lib/services/multi_model_service.dart) 在 Flutter 层并行调用模型。
- [lib/screens/navigation_screen.dart](lib/screens/navigation_screen.dart) 负责把检测结果、语音与 UI 绑定起来。

### 状态与桥接
- [lib/services/navigation_service.dart](lib/services/navigation_service.dart) 接收原生事件并管理导航状态。
- [android/app/src/main/kotlin/com/example/esp_assistant_v2/MainActivity.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/MainActivity.kt) 目前仍是默认 FlutterActivity，没有自定义桥接。

### 旧项目对照
- 盲道导航：`workflow_blindpath.py` -> [BlindPathNavigator.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/BlindPathNavigator.kt)
- 过马路：`workflow_crossstreet.py` -> [CrossStreetNavigator.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/CrossStreetNavigator.kt)
- 寻物：`yolomedia.py` -> [YoloMediaProcessor.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/YoloMediaProcessor.kt)

## 6. 当前接口约定

- Flutter 状态名要尽量保持与 Kotlin / 旧 Python 工作流一致。
- `NavigationState` 和 `VisualElement` 是前后端共享的状态表达核心。
- `DetectionResult` 在 Dart 和 Kotlin 两侧各有定义，但语义都围绕“类别、置信度、边界框”展开。
- Freezed / JSON 模型只改源码，生成文件不要手写维护。
- 原生层里，`MainActivity.kt`、通道名、Gradle 依赖都属于高风险边界，后续改动需要谨慎。

## 7. 半成品项目工具链整理

### Flutter / Dart 工具链
- Flutter SDK（跨平台 UI、插件机制、构建与运行）。
- Dart SDK（业务逻辑、异步编排、模型调用代码）。
- `flutter pub`（依赖解析与包管理）。
- `flutter analyze`、`flutter test`（静态检查与测试）。

### 代码生成与序列化
- Freezed（不可变数据类与联合类型）。
- `json_serializable` / `json_annotation`（JSON 编解码）。
- `build_runner`（生成 `*.freezed.dart` 与 `*.g.dart`）。

### Android / Kotlin 工具链
- Kotlin（原生算法与状态机实现）。
- Android SDK（相机/系统能力与运行环境）。
- Gradle + Kotlin DSL（`build.gradle.kts`，依赖与构建脚本管理）。

### 模型与推理相关
- ONNX Runtime（ONNX 模型推理，Flutter/Kotlin 双侧可接入）。
- TensorFlow Lite（部分模型推理支持，如 MiDaS TFLite）。
- 资源管理：`assets/models/` 统一存放模型文件，运行时按平台加载。

### 联调与运行
- `flutter run`（真机/模拟器联调）。
- Android Studio（Gradle 同步、Kotlin 调试、设备管理）。
- ESP32 固件与网络流作为外部依赖输入（视频/音频/IMU），当前工程主要负责消费与处理。

## 8. 建议后续阅读顺序

1. [lib/screens/navigation_screen.dart](lib/screens/navigation_screen.dart)
2. [lib/services/multi_model_service.dart](lib/services/multi_model_service.dart)
3. [lib/services/navigation_service.dart](lib/services/navigation_service.dart)
4. [android/app/src/main/kotlin/com/example/esp_assistant_v2/BlindPathNavigator.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/BlindPathNavigator.kt)
5. [android/app/src/main/kotlin/com/example/esp_assistant_v2/YoloMediaProcessor.kt](android/app/src/main/kotlin/com/example/esp_assistant_v2/YoloMediaProcessor.kt)
