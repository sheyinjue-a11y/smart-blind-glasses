1.环境要求：
- 操作系统：Windows 10/11（64位）
- Android Studio：2.45.1
- NDK版本：r25c（必须，兼容API 24+）
- CMake版本：4.1.2（Android Studio默认配套版本）
- 目标设备：Android 7.0（API 24）及以上手机/眼镜设备

2.环境配置：
- 运行curl-8.18.0\build_curl_android.bat，在输出目录文件夹中找到库文件；运行cJSON-master\build_cjson_android.bat，在输出目录文件夹中找到库文件
- 将这两份库文件分别拷贝到 基于Qwen-Omni的环境描述和文本识别功能\app\src\main\cpp\curl 和 Qwen-Omni的环境描述和文本识别功能\app\src\main\cpp\cjson中

3.获取API阿里云百炼密钥：
- 访问阿里云百炼官网：https://dashscope.aliyuncs.com/
- 注册/登录阿里云账号（个人账号即可）；
- 进入控制台：点击右上角“控制台”→ 选择“模型服务”→ 勾选“Qwen-Omni”启用（免费测试配额足够评审）；
- 创建密钥：点击“API密钥管理”→ “创建密钥”，获取 `AccessKey Secret`（格式为 `sk-xxx`）；
- 注意：不要泄露密钥，仅用于本地项目调用。