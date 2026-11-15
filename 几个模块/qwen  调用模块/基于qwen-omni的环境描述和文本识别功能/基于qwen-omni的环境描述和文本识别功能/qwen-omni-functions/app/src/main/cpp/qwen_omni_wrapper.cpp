#include <jni.h>
#include <string>
#include <vector>
#include <curl/curl.h>
#include "cJSON.h"

// 全局常量配置
const char* API_URL = "https://dashscope.aliyuncs.com/api/v1/services/aigc/multimodal-conversation";
const char* API_KEY = "sk-xxxxxxxxxxxx"; // 请替换为您的实际API密钥
const int TIMEOUT_MS = 3000;
const int MAX_OUTPUT_TOKENS = 448;
const float TEMPERATURE = 0.2f;

// cURL回调函数：接收响应数据
size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::string* userp) {
    size_t totalSize = size * nmemb;
    userp->append((char*)contents, totalSize);
    return totalSize;
}

// 构造API请求JSON体
std::string buildRequestJson(const std::string& base64Image) {
    cJSON* root = cJSON_CreateObject();
    cJSON_AddStringToObject(root, "model", "qwen-omni");

    // 构造input节点
    cJSON* input = cJSON_CreateObject();
    cJSON* messages = cJSON_CreateArray();
    cJSON* message = cJSON_CreateObject();
    cJSON_AddStringToObject(message, "role", "user");

    // 构造content数组（image + text）
    cJSON* content = cJSON_CreateArray();
    cJSON* imageObj = cJSON_CreateObject();
    cJSON_AddStringToObject(imageObj, "image", base64Image.c_str());
    cJSON_AddItemToArray(content, imageObj);

    cJSON* textObj = cJSON_CreateObject();
    const char* prompt = "请用简洁、口语化的中文描述当前场景，重点说明前方障碍物、可通行方向、以及所有可见文字内容（包括标牌、屏幕、包装盒等）。不要使用专业术语，语句长度不超过25字/句。优先报告安全相关信息（台阶、车辆、玻璃门、电线杆）";
    cJSON_AddStringToObject(textObj, "text", prompt);
    cJSON_AddItemToArray(content, textObj);

    cJSON_AddItemToObject(message, "content", content);
    cJSON_AddItemToArray(messages, message);
    cJSON_AddItemToObject(input, "messages", messages);
    cJSON_AddItemToObject(root, "input", input);

    // 构造parameters节点
    cJSON* params = cJSON_CreateObject();
    cJSON_AddNumberToObject(params, "temperature", TEMPERATURE);
    cJSON_AddNumberToObject(params, "max_output_tokens", MAX_OUTPUT_TOKENS);
    cJSON_AddItemToObject(root, "parameters", params);

    // 生成JSON字符串
    char* jsonStr = cJSON_PrintUnformatted(root);
    std::string result(jsonStr);
    cJSON_Delete(root);
    cJSON_free(jsonStr);
    return result;
}

// 解析响应中的tts_marks字段
std::vector<std::string> parseTtsMarks(const std::string& jsonResp) {
    std::vector<std::string> ttsMarks;
    cJSON* root = cJSON_Parse(jsonResp.c_str());
    if (!root) return ttsMarks;

    cJSON* output = cJSON_GetObjectItem(root, "output");
    if (output) {
        cJSON* ttsMarksArr = cJSON_GetObjectItem(output, "tts_marks");
        if (ttsMarksArr && cJSON_IsArray(ttsMarksArr)) {
            for (int i = 0; i < cJSON_GetArraySize(ttsMarksArr); i++) {
                cJSON* item = cJSON_GetArrayItem(ttsMarksArr, i);
                if (item && cJSON_IsString(item)) {
                    std::string mark = item->valuestring;
                    // 按｜分割长字符串
                    size_t pos = 0;
                    while ((pos = mark.find('｜')) != std::string::npos) {
                        ttsMarks.push_back(mark.substr(0, pos));
                        mark.erase(0, pos + 1);
                    }
                    if (!mark.empty()) {
                        ttsMarks.push_back(mark);
                    }
                }
            }
        }
    }

    cJSON_Delete(root);
    return ttsMarks;
}

// 核心API调用函数
std::string callQwenOmniApi(const std::string& base64Image) {
    CURL* curl = curl_easy_init();
    if (!curl) return "";

    std::string response;
    std::string jsonBody = buildRequestJson(base64Image);

    // 设置cURL选项
    struct curl_slist* headers = nullptr;
    headers = curl_slist_append(headers, "Content-Type: application/json");
    std::string authHeader = "Authorization: Bearer " + std::string(API_KEY);
    headers = curl_slist_append(headers, authHeader.c_str());

    curl_easy_setopt(curl, CURLOPT_URL, API_URL);
    curl_easy_setopt(curl, CURLOPT_POST, 1L);
    curl_easy_setopt(curl, CURLOPT_POSTFIELDS, jsonBody.c_str());
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
    curl_easy_setopt(curl, CURLOPT_TIMEOUT_MS, TIMEOUT_MS);
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L); // 开发环境禁用SSL验证（生产环境需启用）
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, 0L);

    // 执行请求
    CURLcode res = curl_easy_perform(curl);
    if (res != CURLE_OK) {
        response = "CURL Error: " + std::string(curl_easy_strerror(res));
    }

    // 清理资源
    curl_slist_free_all(headers);
    curl_easy_cleanup(curl);
    return response;
}

// JNI接口：供Java调用
extern "C" JNIEXPORT jstring JNICALL
Java_com_example_qwenomni_QwenOmniManager_callQwenOmni(
        JNIEnv* env,
        jobject thiz,
        jstring base64ImageJstr) {
    // 初始化cURL（全局仅需一次）
    static bool curlInitialized = false;
    if (!curlInitialized) {
        curl_global_init(CURL_GLOBAL_DEFAULT);
        curlInitialized = true;
    }

    // 转换Java字符串为C++字符串
    const char* base64ImageCstr = env->GetStringUTFChars(base64ImageJstr, nullptr);
    std::string base64Image(base64ImageCstr);
    env->ReleaseStringUTFChars(base64ImageJstr, base64ImageCstr);

    // 调用API并获取响应
    std::string response = callQwenOmniApi(base64Image);
    return env->NewStringUTF(response.c_str());
}

// JNI接口：解析TTS标记
extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_example_qwenomni_QwenOmniManager_parseTtsMarks(
        JNIEnv* env,
        jobject thiz,
        jstring jsonRespJstr) {
    const char* jsonRespCstr = env->GetStringUTFChars(jsonRespJstr, nullptr);
    std::string jsonResp(jsonRespCstr);
    env->ReleaseStringUTFChars(jsonRespJstr, jsonRespCstr);

    std::vector<std::string> ttsMarks = parseTtsMarks(jsonResp);
    jobjectArray result = env->NewObjectArray(
            ttsMarks.size(),
            env->FindClass("java/lang/String"),
            env->NewStringUTF("")
    );

    for (size_t i = 0; i < ttsMarks.size(); i++) {
        env->SetObjectArrayElement(
                result,
                i,
                env->NewStringUTF(ttsMarks[i].c_str())
        );
    }

    return result;
}

// JNI接口：释放cURL资源
extern "C" JNIEXPORT void JNICALL
Java_com_example_qwenomni_QwenOmniManager_cleanup(
        JNIEnv* env,
jobject thiz) {
curl_global_cleanup();
}