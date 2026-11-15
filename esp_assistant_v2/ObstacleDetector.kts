#!/usr/bin/env kotlin
package com.example.esp_assistant_v2

import android.graphics.RectF

object ObstacleDetector {

    /**
     * 判断是否靠近障碍物
     * @param depthMap 深度图数据
     * @param threshold 距离阈值（米）
     * @return 是否靠近障碍物
     */
    fun isNearObstacle(depthMap: FloatArray, threshold: Float = 0.5f): Boolean {
        if (depthMap.isEmpty()) return false

        // 检查中心区域的最小深度值
        val centerSize = 20
        val centerIndices = depthMap.indices.filter { index ->
            // 简化：检查中心区域，实际应根据图像尺寸计算
            index % 100 in 40..60 && index / 100 in 40..60
        }

        val minDepth = centerIndices.map { depthMap[it] }.minOrNull() ?: Float.MAX_VALUE
        return minDepth < threshold
    }

    /**
     * 检测前方障碍物
     * @param depthMap 深度图数据
     * @param width 图像宽度
     * @param height 图像高度
     * @return 障碍物信息列表
     */
    fun detectObstacles(depthMap: FloatArray, width: Int, height: Int): List<ObstacleInfo> {
        val obstacles = mutableListOf<ObstacleInfo>()
        val threshold = 0.5f // 距离阈值（米）

        // 简化的障碍物检测逻辑
        for (y in 0 until height step 10) {
            for (x in 0 until width step 10) {
                val index = y * width + x
                if (index < depthMap.size && depthMap[index] < threshold) {
                    obstacles.add(
                        ObstacleInfo(
                            rect = RectF(x.toFloat(), y.toFloat(), (x + 10).toFloat(), (y + 10).toFloat()),
                            distance = depthMap[index],
                            confidence = 1.0f - (depthMap[index] / threshold)
                        )
                    )
                }
            }
        }

        return obstacles.distinctBy { "${it.rect.centerX()},${it.rect.centerY()}" }
    }

    /**
     * 获取障碍物方向建议
     */
    fun getObstacleDirection(depthMap: FloatArray, width: Int, height: Int): String {
        val leftDepth = getRegionAverageDepth(depthMap, width, height, 0, width / 3)
        val centerDepth = getRegionAverageDepth(depthMap, width, height, width / 3, width * 2 / 3)
        val rightDepth = getRegionAverageDepth(depthMap, width, height, width * 2 / 3, width)

        return when {
            leftDepth > centerDepth && leftDepth > rightDepth -> "left"
            rightDepth > centerDepth && rightDepth > leftDepth -> "right"
            else -> "center"
        }
    }

    private fun getRegionAverageDepth(
        depthMap: FloatArray,
        width: Int,
        height: Int,
        startX: Int,
        endX: Int
    ): Float {
        var sum = 0f
        var count = 0

        for (y in 0 until height) {
            for (x in startX until endX) {
                val index = y * width + x
                if (index < depthMap.size) {
                    sum += depthMap[index]
                    count++
                }
            }
        }

        return if (count > 0) sum / count else Float.MAX_VALUE
    }
}

data class ObstacleInfo(
    val rect: RectF,
    val distance: Float,
    val confidence: Float
)
