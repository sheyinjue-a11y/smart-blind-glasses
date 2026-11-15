package com.example.qwenomni;

import android.util.Base64;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

public class QwenOmniManager {
    private static final String TAG = "QwenOmniManager";
    private static QwenOmniManager instance;

    // 加载C++库
    static {
        System.loadLibrary("qwenomni");
    }

    // 单例模式
    public static synchronized QwenOmniManager getInstance() {
        if (instance == null) {
            instance = new QwenOmniManager();
        }
        return instance;
    }

    /**
     * 调用Qwen-Omni API
     * @param imageBytes 图像字节数组（JPEG格式）
     * @return API响应JSON字符串
     */
    public String callQwenOmni(byte[] imageBytes) {
        try {
            // 图像转Base64
            String base64Image = Base64.encodeToString(imageBytes, Base64.NO_WRAP);
            Log.d(TAG, "Base64 image length: " + base64Image.length());

            // 调用JNI接口
            return callQwenOmni(base64Image);
        } catch (Exception e) {
            Log.e(TAG, "callQwenOmni error", e);
            return "";
        }
    }

    /**
     * 解析响应中的TTS标记
     * @param jsonResp API响应JSON
     * @return TTS播报文本数组
     */
    public String[] parseTtsMarks(String jsonResp) {
        try {
            return parseTtsMarks(jsonResp);
        } catch (Exception e) {
            Log.e(TAG, "parseTtsMarks error", e);
            return new String[0];
        }
    }

    /**
     * 释放资源
     */
    public void cleanup() {
        cleanup();
    }

    // JNI原生方法声明
    private native String callQwenOmni(String base64Image);
    private native String[] parseTtsMarks(String jsonResp);
    private native void cleanup();
}