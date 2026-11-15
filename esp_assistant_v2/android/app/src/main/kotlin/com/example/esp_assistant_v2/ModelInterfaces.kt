package com.example.esp_assistant_v2

import android.content.Context
import android.graphics.Bitmap

interface BlindPathSegmenter {
    fun loadModel(context: Context, modelPath: String, useGPU: Boolean = false)
    fun segment(bitmap: Bitmap): Pair<Bitmap, FloatArray>
    fun close()
}

interface YoloWorldDetector {
    fun loadModel(context: Context, modelPath: String, useGPU: Boolean = false)
    fun detect(bitmap: Bitmap): List<DetectionResult>
    fun close()
}

interface TrafficLightDetector {
    fun loadModel(context: Context, modelPath: String, useGPU: Boolean = false)
    fun detect(bitmap: Bitmap): List<DetectionResult>
    fun close()
}

interface HandLandmarker {
    fun loadModel(context: Context, modelPath: String, useGPU: Boolean = false)
    fun detect(bitmap: Bitmap): List<Any>
    fun close()
}

interface MidasDepthEstimator {
    fun loadModel(context: Context, modelPath: String, useGPU: Boolean = false)
    fun estimateDepth(bitmap: Bitmap): Bitmap
    fun close()
}