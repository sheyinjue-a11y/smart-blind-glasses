#!/usr/bin/env kotlin
package com.example.esp_assistant_v2

import android.graphics.Bitmap
import android.graphics.RectF

/**
 * YOLO后处理器
 */
class YoloPostProcessor {

    /**
     * 处理检测结果
     * @param outputs 模型输出
     * @param inputBitmap 输入图像
     * @param confidenceThreshold 置信度阈值
     * @param iouThreshold IOU阈值
     * @return 检测结果列表
     */
    fun processOutput(
        outputs: Array<Any>,
        inputBitmap: Bitmap,
        confidenceThreshold: Float = 0.5f,
        iouThreshold: Float = 0.45f
    ): List<DetectionResult> {
        val results = mutableListOf<DetectionResult>()

        // 这里需要根据实际的YOLO模型输出格式来解析
        // 这是一个示例实现
        try {
            // 假设输出格式为 [batch, boxes, 5+classes]
            // 实际实现需要根据你的模型调整

            val boxes = parseBoxes(outputs, confidenceThreshold)

            // 应用NMS（非极大值抑制）
            val nmsBoxes = applyNMS(boxes, iouThreshold)

            for (box in nmsBoxes) {
                results.add(
                    DetectionResult(
                        className = box.className,
                        confidence = box.confidence,
                        rect = box.rect,
                        score = box.confidence
                    )
                )
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }

        return results
    }

    private fun parseBoxes(outputs: Array<Any>, threshold: Float): List<DetectionBox> {
        val boxes = mutableListOf<DetectionBox>()
        // 实现实际的box解析逻辑
        return boxes
    }

    private fun applyNMS(boxes: List<DetectionBox>, iouThreshold: Float): List<DetectionBox> {
        if (boxes.isEmpty()) return emptyList()

        val sortedBoxes = boxes.sortedByDescending { it.confidence }
        val selected = mutableListOf<DetectionBox>()
        val suppressed = BooleanArray(boxes.size)

        for (i in sortedBoxes.indices) {
            if (suppressed[i]) continue

            selected.add(sortedBoxes[i])

            for (j in i + 1 until sortedBoxes.size) {
                if (suppressed[j]) continue

                val iou = calculateIOU(sortedBoxes[i].rect, sortedBoxes[j].rect)
                if (iou > iouThreshold) {
                    suppressed[j] = true
                }
            }
        }

        return selected
    }

    private fun calculateIOU(rect1: RectF, rect2: RectF): Float {
        val overlapLeft = maxOf(rect1.left, rect2.left)
        val overlapTop = maxOf(rect1.top, rect2.top)
        val overlapRight = minOf(rect1.right, rect2.right)
        val overlapBottom = minOf(rect1.bottom, rect2.bottom)

        if (overlapRight <= overlapLeft || overlapBottom <= overlapTop) {
            return 0f
        }

        val overlapArea = (overlapRight - overlapLeft) * (overlapBottom - overlapTop)
        val area1 = rect1.width() * rect1.height()
        val area2 = rect2.width() * rect2.height()

        return overlapArea / (area1 + area2 - overlapArea)
    }

    data class DetectionBox(
        val className: String,
        val confidence: Float,
        val rect: RectF
    )
}
