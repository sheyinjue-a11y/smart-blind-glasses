#include "esp_camera.h"
#include <WiFi.h>
#include <WebServer.h>
#include <WebSocketsServer.h>

// ========== 摄像头引脚定义（ESP32-S3-Sense）==========
#define PWDN_GPIO_NUM     -1
#define RESET_GPIO_NUM    -1
#define XCLK_GPIO_NUM      10
#define SIOD_GPIO_NUM      40
#define SIOC_GPIO_NUM      39
#define Y9_GPIO_NUM        48
#define Y8_GPIO_NUM        11
#define Y7_GPIO_NUM        12
#define Y6_GPIO_NUM        14
#define Y5_GPIO_NUM        16
#define Y4_GPIO_NUM        18
#define Y3_GPIO_NUM        17
#define Y2_GPIO_NUM        15
#define VSYNC_GPIO_NUM     38
#define HREF_GPIO_NUM      47
#define PCLK_GPIO_NUM      13

// ========== 手机热点配置 ==========
const char* ssid = "esptest";        // 你的手机热点名称
const char* password = "12345678";   // 你的热点密码

// ========== 帧率控制配置 ==========
const int TARGET_FPS = 10;
const int FRAME_DELAY_MS = 1000 / TARGET_FPS;

WebServer server(80);
WebSocketsServer webSocket = WebSocketsServer(81);

// ========== 摄像头初始化 ==========
bool initCamera() {
    camera_config_t config;
    config.ledc_channel = LEDC_CHANNEL_0;
    config.ledc_timer = LEDC_TIMER_0;
    config.pin_d0 = Y2_GPIO_NUM;
    config.pin_d1 = Y3_GPIO_NUM;
    config.pin_d2 = Y4_GPIO_NUM;
    config.pin_d3 = Y5_GPIO_NUM;
    config.pin_d4 = Y6_GPIO_NUM;
    config.pin_d5 = Y7_GPIO_NUM;
    config.pin_d6 = Y8_GPIO_NUM;
    config.pin_d7 = Y9_GPIO_NUM;
    config.pin_xclk = XCLK_GPIO_NUM;
    config.pin_pclk = PCLK_GPIO_NUM;
    config.pin_vsync = VSYNC_GPIO_NUM;
    config.pin_href = HREF_GPIO_NUM;
    config.pin_sscb_sda = SIOD_GPIO_NUM;
    config.pin_sscb_scl = SIOC_GPIO_NUM;
    config.pin_pwdn = PWDN_GPIO_NUM;
    config.pin_reset = RESET_GPIO_NUM;
    config.xclk_freq_hz = 20000000;
    config.pixel_format = PIXFORMAT_JPEG;
    config.frame_size = FRAMESIZE_QVGA;
    config.jpeg_quality = 12;
    config.fb_count = 2;

    if(psramFound()) {
        config.fb_location = CAMERA_FB_IN_PSRAM;
        Serial.println("PSRAM 已启用");
    }

    esp_err_t err = esp_camera_init(&config);
    if (err != ESP_OK) {
        Serial.printf("摄像头初始化失败: 0x%x\n", err);
        return false;
    }
    return true;
}

// ========== 连接手机热点 ==========
void connectToWiFi() {
    Serial.println();
    Serial.print("正在连接到手机热点: ");
    Serial.println(ssid);

    WiFi.mode(WIFI_STA);
    WiFi.begin(ssid, password);

    int attempts = 0;
    while (WiFi.status() != WL_CONNECTED && attempts < 40) {
        delay(500);
        Serial.print(".");
        attempts++;
    }

    if (WiFi.status() == WL_CONNECTED) {
        Serial.println("\n✓ WiFi连接成功！");
        Serial.print("IP地址: ");
        Serial.println(WiFi.localIP());
        Serial.print("网关: ");
        Serial.println(WiFi.gatewayIP());
        Serial.print("信号强度: ");
        Serial.print(WiFi.RSSI());
        Serial.println(" dBm");
    } else {
        Serial.println("\n✗ WiFi连接失败！");
        Serial.println("请检查:");
        Serial.println("1. 手机热点是否开启");
        Serial.println("2. 热点名称是否为: esptest");
        Serial.println("3. 密码是否正确: 12345678");
        Serial.println("4. 手机热点是否为 2.4GHz 频段");
    }
}

// ========== 视频流处理 ==========
void handleVideoStream() {
    WiFiClient client = server.client();
    String response = "HTTP/1.1 200 OK\r\n";
    response += "Content-Type: multipart/x-mixed-replace; boundary=frame\r\n\r\n";
    server.sendContent(response);

    Serial.println("视频流客户端已连接");

    unsigned long lastFrameTime = 0;
    int frameCount = 0;
    unsigned long lastLogTime = 0;

    while (client.connected()) {
        unsigned long now = millis();

        if (now - lastFrameTime < FRAME_DELAY_MS) {
            delay(1);
            continue;
        }
        lastFrameTime = now;

        camera_fb_t *fb = esp_camera_fb_get();
        if (!fb) continue;

        String header = "--frame\r\n";
        header += "Content-Type: image/jpeg\r\n";
        header += "Content-Length: " + String(fb->len) + "\r\n\r\n";
        server.sendContent(header);
        server.sendContent((char*)fb->buf, fb->len);
        server.sendContent("\r\n");

        esp_camera_fb_return(fb);
        frameCount++;

        if (now - lastLogTime >= 1000) {
            float actualFPS = frameCount * 1000.0 / (now - lastLogTime);
            Serial.printf("📊 实际帧率: %.1f fps\n", actualFPS);
            frameCount = 0;
            lastLogTime = now;
        }
    }

    Serial.println("视频流客户端断开");
}

// ========== 根页面 ==========
void handleRoot() {
    String html = "<!DOCTYPE html><html>";
    html += "<head><meta charset='UTF-8'><title>ESP32-S3 摄像头</title>";
    html += "<meta name='viewport' content='width=device-width, initial-scale=1'>";
    html += "<style>";
    html += "body{font-family:Arial;text-align:center;margin:20px;background:#f0f0f0;}";
    html += "h1{color:#333;}";
    html += "img{width:100%;max-width:640px;border-radius:10px;}";
    html += ".info{background:#fff;padding:15px;border-radius:10px;margin:20px 0;}";
    html += ".connected{color:green;}";
    html += "</style></head><body>";
    html += "<h1>ESP32-S3 摄像头</h1>";
    html += "<div class='info'>";
    html += "<p>IP地址: " + WiFi.localIP().toString() + "</p >";
    html += "<p>连接的WiFi: " + String(ssid) + "</p >";
    html += "<p>信号强度: " + String(WiFi.RSSI()) + " dBm</p >";
    html += "</div>";
    html += "< img src='/stream' alt='Video Stream'>";
    html += "</body></html>";
    server.send(200, "text/html", html);
}

// ========== 状态页面 ==========
void handleStatus() {
    String json = "{";
    json += "\"ip\":\"" + WiFi.localIP().toString() + "\",";
    json += "\"ssid\":\"" + String(ssid) + "\",";
    json += "\"rssi\":" + String(WiFi.RSSI()) + ",";
    json += "\"heap\":" + String(ESP.getFreeHeap());
    json += "}";
    server.send(200, "application/json", json);
}

// ========== WebSocket 事件 ==========
void webSocketEvent(uint8_t num, WStype_t type, uint8_t *payload, size_t length) {
    switch(type) {
        case WStype_DISCONNECTED:
            Serial.printf("[%u] WebSocket断开\n", num);
            break;
        case WStype_CONNECTED:
            Serial.printf("[%u] WebSocket连接\n", num);
            break;
    }
}

// ========== 主程序 ==========
void setup() {
    Serial.begin(115200);
    delay(1000);
    Serial.println("\n\n=================================");
    Serial.println("ESP32-S3 摄像头系统启动（STA模式）");
    Serial.println("=================================");

    // 检查 PSRAM
    if(psramFound()) {
        Serial.printf("PSRAM 已启用，大小: %d MB\n", ESP.getPsramSize() / 1024 / 1024);
    } else {
        Serial.println("警告: PSRAM 未启用！");
    }

    // 初始化摄像头
    Serial.println("初始化摄像头...");
    if (!initCamera()) {
        Serial.println("摄像头初始化失败！");
        return;
    }
    Serial.println("✓ 摄像头初始化成功");

    // 连接手机热点
    connectToWiFi();

    // 设置 HTTP 路由
    server.on("/", HTTP_GET, handleRoot);
    server.on("/stream", HTTP_GET, handleVideoStream);
    server.on("/status", HTTP_GET, handleStatus);
    server.begin();
    Serial.println("✓ HTTP 服务器已启动");

    webSocket.begin();
    webSocket.onEvent(webSocketEvent);
    Serial.println("✓ WebSocket 服务器已启动");

    Serial.println("\n=================================");
    Serial.println("系统就绪！");
    if (WiFi.status() == WL_CONNECTED) {
        Serial.printf("请在手机浏览器访问: http://%s\n", WiFi.localIP().toString().c_str());
        Serial.printf("或在 Flutter 应用中输入 IP: %s\n", WiFi.localIP().toString().c_str());
    }
    Serial.println("=================================\n");
}

void loop() {
    server.handleClient();
    webSocket.loop();
    delay(10);
}