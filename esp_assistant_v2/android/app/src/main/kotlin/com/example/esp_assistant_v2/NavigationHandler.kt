package com.example.esp_assistant_v2

import android.content.Context

class NavigationHandler(private val context: Context) {

    private var blindPathSegmenter: BlindPathSegmenter? = null
    private var yoloDetector: YoloWorldDetector? = null
    private var trafficLightDetector: TrafficLightDetector? = null
    private var handLandmarker: HandLandmarker? = null
    private var depthEstimator: MidasDepthEstimator? = null

    fun initializeModels() {
        blindPathSegmenter = RealBlindPathSegmenter().apply {
            loadModel(context, "models/blind_path_segmenter.tflite")
        }

        yoloDetector = RealYoloWorldDetector().apply {
            loadModel(context, "models/yolo_world.tflite")
        }

        trafficLightDetector = RealTrafficLightDetector().apply {
            loadModel(context, "models/traffic_light.tflite")
        }

        handLandmarker = RealHandLandmarker().apply {
            loadModel(context, "models/hand_landmarker.tflite")
        }

        depthEstimator = RealMidasDepthEstimator().apply {
            loadModel(context, "models/midas_depth.tflite")
        }
    }
}