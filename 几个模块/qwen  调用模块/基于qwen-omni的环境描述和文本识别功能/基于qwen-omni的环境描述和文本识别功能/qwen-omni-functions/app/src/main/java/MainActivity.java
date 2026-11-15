package com.example.qwenomni;

import android.Manifest;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class MainActivity extends AppCompatActivity {
    private static final int REQUEST_PERMISSIONS = 1001;
    private QwenOmniManager qwenOmniManager;
    private TextView resultTv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // 初始化管理器
        qwenOmniManager = QwenOmniManager.getInstance();
        resultTv = findViewById(R.id.result_tv);
        Button testBtn = findViewById(R.id.test_btn);

        // 检查权限
        checkPermissions();

        // 测试按钮点击事件
        testBtn.setOnClickListener(v -> testQwenOmniApi());
    }

    /**
     * 测试Qwen-Omni API调用
     */
    private void testQwenOmniApi() {
        new Thread(() -> {
            try {
                // 从assets读取测试图片（替换为实际相机采集图像）
                InputStream is = getAssets().open("test_scene.jpg");
                Bitmap bitmap = BitmapFactory.decodeStream(is);
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.JPEG, 80, baos);
                byte[] imageBytes = baos.toByteArray();
                is.close();
                baos.close();

                // 调用API
                String response = qwenOmniManager.callQwenOmni(imageBytes);
                // 解析TTS标记
                String[] ttsMarks = qwenOmniManager.parseTtsMarks(response);

                // 更新UI
                runOnUiThread(() -> {
                    StringBuilder sb = new StringBuilder();
                    sb.append("API响应：\n").append(response).append("\n\n");
                    sb.append("TTS播报内容：\n");
                    for (String mark : ttsMarks) {
                        sb.append("- ").append(mark).append("\n");
                    }
                    resultTv.setText(sb.toString());
                });

            } catch (IOException e) {
                runOnUiThread(() -> Toast.makeText(MainActivity.this, "测试图片读取失败", Toast.LENGTH_SHORT).show());
                e.printStackTrace();
            }
        }).start();
    }

    /**
     * 检查必要权限
     */
    private void checkPermissions() {
        String[] permissions = {
                Manifest.permission.INTERNET,
                Manifest.permission.CAMERA
        };

        boolean needRequest = false;
        for (String permission : permissions) {
            if (ContextCompat.checkSelfPermission(this, permission) != PackageManager.PERMISSION_GRANTED) {
                needRequest = true;
                break;
            }
        }

        if (needRequest) {
            ActivityCompat.requestPermissions(this, permissions, REQUEST_PERMISSIONS);
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQUEST_PERMISSIONS) {
            boolean allGranted = true;
            for (int result : grantResults) {
                if (result != PackageManager.PERMISSION_GRANTED) {
                    allGranted = false;
                    break;
                }
            }
            if (!allGranted) {
                Toast.makeText(this, "必需权限未授予，功能无法使用", Toast.LENGTH_SHORT).show();
            }
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        // 释放资源
        qwenOmniManager.cleanup();
    }
}