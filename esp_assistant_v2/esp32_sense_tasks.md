# ESP32 Sense 主程序任务梳理

## 1. 主程序总体职责

该开发板固件是整套系统的边缘采集与回放节点，核心职责是三件事：

1. 采集多模态数据：摄像头视频、麦克风音频、IMU 姿态。
2. 将数据按约定协议发送到服务端：视频和音频走 WebSocket，IMU 走 UDP。
3. 接收服务端下发的数据与控制命令：音频播放流、相机参数控制、抓拍指令。

换句话说，ESP32 不承担复杂 AI 推理本身，而是完成实时采集、基础预处理、传输与设备侧执行。

## 2. 功能分块与具体工作

## 2.1 WiFi 与连接管理

- 连接固定 WiFi，关闭省电，提升链路实时性。
- 建立两个 WebSocket 连接：
  - 视频通道：/ws/camera
  - 音频通道：/ws_audio
- 建立一个 UDP 通道用于 IMU 上报（目标端口 12345）。
- 在 loop 中轮询并自动重连，保证弱网下可恢复。

## 2.2 摄像头采集与发送

- 初始化 XIAO ESP32S3 Sense 摄像头，输出 JPEG。
- 通过双任务解耦：
  - taskCamCapture 负责采集并入队。
  - taskCamSend 负责出队并通过 /ws/camera 发送。
- 队列满时丢弃最旧帧，优先发送最新画面，降低积压延迟。
- 支持运行时控制：
  - 设置分辨率（SET:FRAMESIZE）
  - 设置 JPEG 质量（SET:QUALITY）
  - 设置发送 FPS 限速（SET:FPS）
  - 高质量抓拍（SNAP:HQ，临时提分辨率后发送）
- 维护传输统计：采集数、发送数、丢帧数、发送失败数。

## 2.3 麦克风采集与上行

- 使用 PDM I2S 采集 16kHz、16bit、单声道 PCM。
- 按 20ms 打包音频块并入队。
- 通过 /ws_audio 发送二进制音频块给服务端 ASR 链路。
- 通过 run_audio_stream 开关控制上传启停，支持 RESTART 指令重置音频上传状态。

## 2.4 扬声器下行播放

- 使用 I2S TX 驱动 MAX98357A。
- 启动 HTTP 长连接拉取 /stream.wav（支持 chunked 传输）。
- 在设备端解析 WAV 头（RIFF/WAVE、fmt、data）。
- 仅接受 PCM、mono、16bit、8k/12k/16k 采样率。
- 根据服务端采样率动态重配 I2S 输出，做 mono16 -> stereo32 转换后播放。
- 同时保留 TTS 分片播放队列逻辑（默认不启用）。

## 2.5 IMU 采集与上报

- 使用 SPI 连接 ICM42688，避开 I2S 干扰。
- 初始化后以 50Hz 读取温度、加速度、角速度。
- 对加速度做指数滑动平均（EMA）平滑。
- 以 JSON 通过 UDP 上报，字段含 ts、temp_c、accel、gyro。

## 2.6 任务调度与并发模型

- 基于 FreeRTOS 多任务并发：
  - 摄像头采集
  - 摄像头发送
  - 麦克风采集
  - 麦克风上传
  - IMU 循环上报
  - TTS 播放
  - HTTP WAV 播放（按需启动）
- 通过队列实现生产者-消费者，减少互相阻塞。

## 3. 对照 PROJECT_STRUCTURE.md 的数据处理与对接关系

## 3.1 视频链路对接

PROJECT_STRUCTURE 定义链路：

ESP32-CAM -> WebSocket /ws/camera -> bridge_io.push_raw_jpeg() -> 导航/识别工作流 -> /ws/viewer -> 前端。

开发板侧完成：

- 采集 JPEG。
- 通过 /ws/camera 实时发送。
- 接收来自服务端的相机控制命令并执行（分辨率、质量、FPS、抓拍）。

结论：开发板承担视频源头输入与可控采集策略执行，服务端承担视觉推理与结果分发。

## 3.2 音频上行链路对接

PROJECT_STRUCTURE 定义链路：

ESP32-MIC -> WebSocket /ws_audio -> asr_core -> DashScope ASR -> 文本结果。

开发板侧完成：

- 将麦克风数据整形成 PCM16 音频块。
- 按实时流方式推送到 /ws_audio。
- 处理音频流重启命令，保证会话连续性。

结论：开发板负责干净、连续、低延迟的原始语音供给。

## 3.3 音频下行链路对接

PROJECT_STRUCTURE 定义链路：

Qwen-Omni/TTS -> audio_player/audio_stream -> HTTP /stream.wav -> ESP32-Speaker。

开发板侧完成：

- 连接并拉取 /stream.wav。
- 解析 HTTP 与 WAV，适配不同采样率。
- 转换并写入 I2S 扬声器播放。

结论：开发板是语音回放终端，实现从服务端流到物理喇叭的最后一跳。

## 3.4 IMU 链路对接

PROJECT_STRUCTURE 定义链路：

ESP32-IMU -> UDP 12345 -> process_imu_and_maybe_store() -> WebSocket /ws -> visualizer.js。

开发板侧完成：

- SPI 读取 ICM42688 原始值。
- 单位换算和平滑。
- JSON 打包并 UDP 上报。

结论：开发板负责姿态传感数据采集与标准化输出，服务端负责融合、转发和可视化。

## 4. 开发板侧已实现的数据处理清单

1. 图像侧：JPEG 编码帧采集、发送节流、队列丢帧策略、抓拍切换。
2. 音频上行：PDM 读取、20ms 分片、PCM16 数据打包与发送。
3. 音频下行：HTTP chunked 处理、WAV 头解析、采样率适配、I2S 播放转换。
4. IMU：SPI 读寄存器、量纲换算、EMA 平滑、JSON 序列化。
5. 连接稳态：WebSocket/HTTP 自动重连、任务解耦、运行统计日志。

## 5. 与后端模块的接口边界

开发板负责：

- 设备驱动与实时数据搬运。
- 基础格式化与轻量预处理。
- 控制命令执行（相机参数、抓拍、音频重启）。

后端（app_main.py 与各 workflow）负责：

- AI 模型推理与状态机决策。
- 多路数据融合（视觉、语音、IMU）。
- 结果生成与对前端广播。

这种边界划分使开发板侧保持轻量、实时和稳定，服务端侧保持可扩展与可迭代。

## 6. 接口速查表（联调版）

## 6.1 网络与通道

1. WebSocket 视频上行
- 地址：ws://47.100.161.139:8081/ws/camera
- 方向：ESP32 -> 服务端
- 载荷：JPEG 二进制帧

2. WebSocket 音频上行
- 地址：ws://47.100.161.139:8081/ws_audio
- 方向：ESP32 -> 服务端
- 载荷：PCM16 单声道二进制块（20ms）

3. HTTP 音频下行
- 地址：http://47.100.161.139:8081/stream.wav
- 方向：服务端 -> ESP32
- 协议：HTTP 1.1（支持 chunked）
- 载荷：WAV（PCM, mono, 16bit）

4. UDP IMU 上报
- 目标：47.100.161.139:12345
- 方向：ESP32 -> 服务端
- 载荷：JSON 文本

## 6.2 开发板接收的控制指令（来自 /ws/camera）

1. SET:FRAMESIZE=VGA|SVGA|XGA
- 作用：动态调整视频分辨率。

2. SET:QUALITY=数值
- 作用：动态调整 JPEG 质量。
- 有效区间：5 到 40（固件内部会 constrain）。

3. SET:FPS=数值
- 作用：发送节流；0 表示不限速。
- 有效区间：5 到 60（大于 0 时生效）。

4. SNAP:HQ
- 作用：触发高质量抓拍。
- 行为：暂时切换到高分辨率拍一帧并发送，然后恢复原参数。
- 辅助文本消息：SNAP:BEGIN / SNAP:END。

## 6.3 开发板接收的控制指令（来自 /ws_audio）

1. RESTART
- 作用：重置音频上行状态。
- 行为：停止上传 -> 清空音频队列 -> 发送 START -> 继续上传。

## 6.4 关键数据格式

1. 视频帧
- 类型：JPEG 二进制。
- 发送策略：队列最新优先，满队列时丢弃最旧帧。

2. 音频上行块
- 格式：PCM16，单声道，16kHz。
- 分片：20ms/包。
- 估算大小：640 字节/包。

3. 音频下行播放
- 支持采样率：8k / 12k / 16k。
- 支持格式：PCM + mono + 16bit。
- 设备侧处理：mono16 转 stereo32 后送 I2S。

4. IMU JSON 示例

```json
{
  "ts": 123456,
  "temp_c": 31.25,
  "accel": {"x": 0.012, "y": -0.981, "z": 9.701},
  "gyro": {"x": -0.420, "y": 1.230, "z": 0.015}
}
```

## 6.5 时序与频率参数

1. 相机
- 默认发送：不设上限（受链路和处理能力约束）。
- 限速发送：由 SET:FPS 控制。

2. 麦克风
- 采样率：16kHz。
- 分片周期：20ms。

3. IMU
- 上报周期：20ms。
- 上报频率：50Hz。

4. 重连机制
- /ws/camera 失败后约 1s 重试。
- /ws_audio 失败后约 2s 重试。

## 6.6 与后端模块的直接对接点

1. 对接 app_main.py
- 提供 /ws/camera 与 /ws_audio 的上行源数据。
- 拉取 /stream.wav 作为下行播放源。

2. 对接 bridge_io.py
- 视频数据作为 push_raw_jpeg() 的输入来源。

3. 对接 asr_core.py / audio_stream.py
- 提供 ASR 原始音频输入。
- 消费 audio_stream 产出的 /stream.wav。

4. 对接 process_imu_and_maybe_store()
- 通过 UDP 持续提供 IMU JSON 数据。