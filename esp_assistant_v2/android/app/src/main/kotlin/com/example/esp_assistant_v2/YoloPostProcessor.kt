package com.example.esp_assistant_v2

import android.graphics.Bitmap
import android.graphics.RectF

class YoloPostProcessor {

    fun processOutput(
        outputs: Array<Any>,
        inputBitmap: Bitmap,
        confidenceThreshold: Float = 0.5f,
        iouThreshold: Float = 0.45f
    ): List<DetectionResult> {
        val results = mutableListOf<DetectionResult>()

        try {
            // 解析检测框
            val boxes = parseDetections(outputs, confidenceThreshold)

            // 应用NMS
            val nmsBoxes = applyNonMaxSuppression(boxes, iouThreshold)

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

    private fun parseDetections(outputs: Array<Any>, threshold: Float): List<DetectionBox> {
        val boxes = mutableListOf<DetectionBox>()
        // 实现解析逻辑
        return boxes
    }

    private fun applyNonMaxSuppression(boxes: List<DetectionBox>, iouThreshold: Float): List<DetectionBox> {
        if (boxes.isEmpty()) return emptyList()

        val sorted = boxes.sortedByDescending { it.confidence }
        val selected = mutableListOf<DetectionBox>()
        val suppressed = BooleanArray(boxes.size)

        for (i in sorted.indices) {
            if (suppressed[i]) continue

            selected.add(sorted[i])

            for (j in i + 1 until sorted.size) {
                if (suppressed[j]) continue

                val iou = calculateIOU(sorted[i].rect, sorted[j].rect)
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