package com.example.esp_assistant_v2

import android.graphics.RectF

data class DetectionResult(
    val className: String,
    val confidence: Float,
    val rect: RectF,
    val score: Float = confidence
)