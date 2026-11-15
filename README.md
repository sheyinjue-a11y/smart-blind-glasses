# 启明 · 智能助盲眼镜

保存本项目的手机端、ESP32 固件、Python 参考实现、模型、三维外壳设计以及参赛材料。

| 目录 | 内容 |
| --- | --- |
| `esp_assistant_v2/` | 当前 Flutter 手机端、Android/Kotlin 推理与 ESP32-S3 固件 |
| `esp_assistant_v2/legacy_python_ref/core_files/` | 手机端迁移前的 Python 参考实现与工作流说明 |
| `助盲眼镜开发platform/`、`帆哥版OpenAIglasses_for_Navigation-main*` | 原 Python 开发平台与本地保留版本 |
| `几个模块/` | Qwen 调用模块、原生 Android/C++ 模块及依赖源码 |
| `3d模型/`、`model（原格式）/` | 需从 Release 恢复的三维设计与原格式模型 |
| `架构图/`、`接线图/`、`软赛项目_提交文件/`、`附件/` | 设计图、线路说明、项目文档与比赛材料 |
| `archive/` | 原 ZIP/7z 解包保留的历史版本与模板 |

## 恢复与运行

先按 [RESOURCES.md](RESOURCES.md) 下载并恢复模型、语音提示、三维文件和归档材料。

手机端：安装 Flutter 3 / Dart 3、Android SDK 与 JDK 17，进入 `esp_assistant_v2/` 执行：

```sh
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter analyze
flutter test
flutter run
```

模型应恢复到 `esp_assistant_v2/assets/models/`。该目录在 `pubspec.yaml` 中声明为 Flutter assets。现有文档记录仍有原生模型桥接、序列化及真机联调事项，详见 [手机端原 README](esp_assistant_v2/README.md)、[Python 参考说明](esp_assistant_v2/legacy_python_ref/core_files/README.md) 和 `esp32_sense_tasks.md`；归档不代表这些事项已经修复或通过真机测试。

Python 平台：在需要运行的版本目录中创建 Python 虚拟环境，安装该目录的 `requirements.txt`，按照该版本 README 配置设备连接并启动 `app_main.py`。在运行前设置 `DASHSCOPE_API_KEY` 环境变量。上传副本已将硬编码 API Key 改为该变量；Arduino `compile.ino` 中的 `YOUR_WIFI_SSID`、`YOUR_WIFI_PASSWORD` 需要按实际网络填写。不要提交个人密钥。

## 来源与状态

原 Python 平台关联上游 [AI-FanGe/OpenAIglasses_for_Navigation](https://github.com/AI-FanGe/OpenAIglasses_for_Navigation)，各版本保留原说明和第三方许可证。手机端原关联仓库为 [workbench](https://github.com/sheyinjue-a11y/workbench)。自定义权重以本仓库 Release 中的原文件为准，不能用同名通用权重直接替代。

本仓库为项目历史归档。文件和恢复流程单独验证；完整应用、外部 API、相机、语音及 ESP32 硬件效果需要在相应环境中重新验证。
