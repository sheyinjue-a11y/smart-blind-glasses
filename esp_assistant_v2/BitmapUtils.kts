#!/usr/bin/env kotlin
package com.example.esp_assistant_v2

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.nio.ByteBuffer
import java.nio.ByteOrder

object BitmapUtils {

    /**
     * 将Bitmap转换为FloatArray
     */
    fun bitmapToFloatArray(bitmap: Bitmap): FloatArray {
        val width = bitmap.width
        val height = bitmap.height
        val floatArray = FloatArray(width * height * 3)

        val pixels = IntArray(width * height)
        bitmap.getPixels(pixels, 0, width, 0, 0, width, height)

        for (i in pixels.indices) {
            val pixel = pixels[i]
            val r = ((pixel shr 16) and 0xFF) / 255.0f
            val g = ((pixel shr 8) and 0xFF) / 255.0f
            val b = (pixel and 0xFF) / 255.0f

            floatArray[i * 3] = r
            floatArray[i * 3 + 1] = g
            floatArray[i * 3 + 2] = b
        }

        return floatArray
    }

    /**
     * 将FloatArray转换为Bitmap
     */
    fun floatArrayToBitmap(floatArray: FloatArray, width: Int, height: Int): Bitmap {
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val pixels = IntArray(width * height)

        for (i in 0 until width * height) {
            val r = (floatArray[i * 3] * 255).toInt().coerceIn(0, 255)
            val g = (floatArray[i * 3 + 1] * 255).toInt().coerceIn(0, 255)
            val b = (floatArray[i * 3 + 2] * 255).toInt().coerceIn(0, 255)
            pixels[i] = (0xFF shl 24) or (r shl 16) or (g shl 8) or b
        }

        bitmap.setPixels(pixels, 0, width, 0, 0, width, height)
        return bitmap
    }

    /**
     * 调整Bitmap大小
     */
    fun resizeBitmap(bitmap: Bitmap, targetWidth: Int, targetHeight: Int): Bitmap {
        return Bitmap.createScaledBitmap(bitmap, targetWidth, targetHeight, true)
    }

    /**
     * ByteBuffer转FloatArray
     */
    fun byteBufferToFloatArray(byteBuffer: ByteBuffer): FloatArray {
        byteBuffer.order(ByteOrder.nativeOrder())
        val floatArray = FloatArray(byteBuffer.remaining() / 4)
        byteBuffer.asFloatBuffer().get(floatArray)
        return floatArray
    }
}
