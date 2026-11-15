#!/usr/bin/env kotlin
package com.example.esp_assistant_v2

import android.graphics.Bitmap
import android.graphics.RectF

/**
 * YOLO媒体处理器 - 处理YOLO检测结果的媒体处理逻辑
 */
class YoloMediaProcessor {

    companion object {
        /**
         * 计算面积占比
         */
        fun calculateAreaRatio(rect: RectF, imageWidth: Int, imageHeight: Int): Float {
            val area = rect.width() * rect.height()
            val imageArea = (imageWidth * imageHeight).toFloat()
            return if (imageArea > 0) area / imageArea else 0f
        }

        /**
         * 计算底部Y坐标占比
         */
        fun calculateBottomYRatio(rect: RectF, imageHeight: Int): Float {
            return if (imageHeight > 0) rect.bottom / imageHeight else 0f
        }
    }

    // 手势到目标方向
    var handToTargetDirection: String? = null

    /**
     * 处理检测结果
     */
    fun processDetections(
        detections: List<DetectionResult>,
        imageWidth: Int,
        imageHeight: Int
    ): ProcessedResult {
        val processedItems = mutableListOf<ProcessedItem>()

        for (detection in detections) {
            val areaRatio = calculateAreaRatio(detection.rect, imageWidth, imageHeight)
            val bottomYRatio = calculateBottomYRatio(detection.rect, imageHeight)

            processedItems.add(
                ProcessedItem(
                    className = detection.className,
                    confidence = detection.confidence,
                    rect = detection.rect,
                    areaRatio = areaRatio,
                    bottomYRatio = bottomYRatio
                )
            )
        }

        // 按面积和置信度排序
        processedItems.sortWith(compareByDescending<ProcessedItem> { it.areaRatio }
            .thenByDescending { it.confidence })

        // 判断手势方向
        val gestureDirection = analyzeGestureDirection(processedItems)

        return ProcessedResult(
            items = processedItems,
            gestureDirection = gestureDirection,
            handToTargetDirection = handToTargetDirection
        )
    }

    /**
     * 分析手势方向
     */
    private fun analyzeGestureDirection(items: List<ProcessedItem>): String? {
        // 简化的手势方向分析逻辑
        if (items.isEmpty()) return null

        // 基于检测框位置判断方向
        val centerItems = items.filter {
            it.rect.centerX() in 0.3f..0.7f && it.rect.centerY() in 0.3f..0.7f
        }

        return when {
            centerItems.isNotEmpty() -> "center"
            items.any { it.rect.centerX() < 0.3f } -> "left"
            items.any { it.rect.centerX() > 0.7f } -> "right"
            else -> null
        }
    }

    /**
     * 判断是否靠近障碍物
     */
    fun isNearObstacle(depthMap: FloatArray?, threshold: Float = 0.5f): Boolean {
        if (depthMap == null || depthMap.isEmpty()) return false

        // 检查中心区域的最小深度
        val centerSize = depthMap.size / 4
        val startIdx = depthMap.size / 2 - centerSize / 2
        val endIdx = startIdx + centerSize

        var minDepth = Float.MAX_VALUE
        for (i in startIdx until endIdx.coerceAtMost(depthMap.size)) {
            if (depthMap[i] < minDepth) {
                minDepth = depthMap[i]
            }
        }

        return minDepth < threshold
    }

    /**
     * 处理深度图并获取方向建议
     */
    fun getDirectionFromDepth(depthMap: FloatArray?, width: Int, height: Int): String {
        if (depthMap == null || depthMap.isEmpty()) return "center"

        val leftThird = getAverageDepthInRegion(depthMap, width, height, 0, width / 3)
        val centerThird = getAverageDepthInRegion(depthMap, width, height, width / 3, width * 2 / 3)
        val rightThird = getAverageDepthInRegion(depthMap, width, height, width * 2 / 3, width)

        return when {
            leftThird > centerThird && leftThird > rightThird -> "left"
            rightThird > centerThird && rightThird > leftThird -> "right"
            else -> "center"
        }
    }

    private fun getAverageDepthInRegion(
        depthMap: FloatArray,
        width: Int,
        height: Int,
        startX: Int,
        endX: Int
    ): Float {
        var sum = 0f
        var count = 0

        for (y in 0 until height) {
            for (x in startX until endX.coerceAtMost(width)) {
                val index = y * width + x
                if (index < depthMap.size) {
                    sum += depthMap[index]
                    count++
                }
            }
        }

        return if (count > 0) sum / count else 0f
    }
}

/**
 * 处理后的结果数据类
 */
data class ProcessedResult(
    val items: List<ProcessedItem>,
    val gestureDirection: String?,
    val handToTargetDirection: String?
)

/**
 * 处理后的单个项目
 */
data class ProcessedItem(
    val className: String,
    val confidence: Float,
    val rect: RectF,
    val areaRatio: Float,
    val bottomYRatio: Float
) : Comparable<ProcessedItem> {
    override fun compareTo(other: ProcessedItem): Int {
        // 先按面积比比较
        val areaCompare = this.areaRatio.compareTo(other.areaRatio)
        if (areaCompare != 0) return areaCompare
        // 再按置信度比较
        return this.confidence.compareTo(other.confidence)
    }
}
