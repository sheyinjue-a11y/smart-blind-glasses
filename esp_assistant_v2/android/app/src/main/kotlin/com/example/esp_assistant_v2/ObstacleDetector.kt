package com.example.esp_assistant_v2

import android.graphics.RectF

object ObstacleDetector {

    fun isNearObstacle(detection: DetectionResult, imageWidth: Int, imageHeight: Int): Boolean {
        val rect = detection.rect
        val boxArea = rect.width() * rect.height()
        val imageArea = (imageWidth * imageHeight).toFloat()
        val areaRatio = boxArea / imageArea

        // 如果检测框面积超过图像面积的15%，认为靠近
        val isLargeEnough = areaRatio > 0.15f
        val isInLowerHalf = rect.bottom > imageHeight / 2

        return isLargeEnough && isInLowerHalf && detection.confidence > 0.5f
    }

    fun isNearObstacle(depthMap: FloatArray, threshold: Float = 0.5f): Boolean {
        if (depthMap.isEmpty()) return false

        val centerStart = depthMap.size / 3
        val centerEnd = depthMap.size * 2 / 3

        var minDepth = Float.MAX_VALUE
        for (i in centerStart until centerEnd.coerceAtMost(depthMap.size)) {
            if (depthMap[i] < minDepth) {
                minDepth = depthMap[i]
            }
        }

        return minDepth < threshold
    }
}