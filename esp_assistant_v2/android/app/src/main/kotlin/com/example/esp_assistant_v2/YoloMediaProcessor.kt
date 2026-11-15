package com.example.esp_assistant_v2

import android.graphics.RectF
import kotlin.math.max
import kotlin.math.min

class YoloMediaProcessor {

    var handToTargetDirection: String? = null
        @Synchronized get
        @Synchronized set

    /**
     * 计算面积占比
     */
    private fun calculateAreaRatio(rect: RectF, imageWidth: Int, imageHeight: Int): Float {
        val area = rect.width() * rect.height()
        val imageArea = (imageWidth * imageHeight).toFloat()
        return if (imageArea > 0) area / imageArea else 0f
    }

    /**
     * 计算底部Y坐标占比
     */
    private fun calculateBottomYRatio(rect: RectF, imageHeight: Int): Float {
        return if (imageHeight > 0) rect.bottom / imageHeight else 0f
    }

    /**
     * 处理检测结果
     */
    fun processResults(
        detections: List<DetectionResult>,
        imageWidth: Int,
        imageHeight: Int
    ): ProcessedResults {
        val items = mutableListOf<ProcessedItem>()

        for (detection in detections) {
            val areaRatio = calculateAreaRatio(detection.rect, imageWidth, imageHeight)
            val bottomYRatio = calculateBottomYRatio(detection.rect, imageHeight)

            items.add(
                ProcessedItem(
                    className = detection.className,
                    confidence = detection.confidence,
                    rect = detection.rect,
                    areaRatio = areaRatio,
                    bottomYRatio = bottomYRatio
                )
            )
        }

        // 使用明确的比较器排序
        items.sortWith(Comparator { a, b ->
            when {
                a.areaRatio != b.areaRatio -> b.areaRatio.compareTo(a.areaRatio)
                else -> b.confidence.compareTo(a.confidence)
            }
        })

        val direction = analyzeDirection(items)

        return ProcessedResults(
            items = items,
            direction = direction,
            handDirection = handToTargetDirection
        )
    }

    /**
     * 分析方向
     */
    private fun analyzeDirection(items: List<ProcessedItem>): String? {
        if (items.isEmpty()) return null

        // 使用明确的比较
        val leftItems = items.filter { it.rect.centerX() < 0.33f }
        val centerItems = items.filter { it.rect.centerX() in 0.33f..0.66f }
        val rightItems = items.filter { it.rect.centerX() > 0.66f }

        return when {
            centerItems.isNotEmpty() -> "center"
            leftItems.size > rightItems.size -> "left"
            rightItems.size > leftItems.size -> "right"
            else -> null
        }
    }

    /**
     * 判断是否靠近障碍物
     */
    fun isNearObstacle(depthMap: FloatArray?, threshold: Float = 0.5f): Boolean {
        if (depthMap == null || depthMap.isEmpty()) return false

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

    /**
     * 获取方向建议
     */
    fun getDirectionSuggestion(depthMap: FloatArray?, width: Int, height: Int): String {
        if (depthMap == null || depthMap.isEmpty()) return "center"

        val leftAvg = getAverageDepth(depthMap, width, height, 0, width / 3)
        val centerAvg = getAverageDepth(depthMap, width, height, width / 3, width * 2 / 3)
        val rightAvg = getAverageDepth(depthMap, width, height, width * 2 / 3, width)

        return when {
            leftAvg > centerAvg && leftAvg > rightAvg -> "left"
            rightAvg > centerAvg && rightAvg > leftAvg -> "right"
            else -> "center"
        }
    }

    private fun getAverageDepth(
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

data class ProcessedResults(
    val items: List<ProcessedItem>,
    val direction: String?,
    val handDirection: String?
)

data class ProcessedItem(
    val className: String,
    val confidence: Float,
    val rect: RectF,
    val areaRatio: Float,
    val bottomYRatio: Float
)