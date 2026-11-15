package com.example.esp_assistant_v2

import android.graphics.Bitmap
import android.graphics.Color
import java.nio.ByteBuffer
import java.nio.ByteOrder

object BitmapUtils {

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

    fun floatArrayToBitmap(floatArray: FloatArray, width: Int, height: Int): Bitmap {
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val pixels = IntArray(width * height)

        for (i in 0 until width * height) {
            val r = (floatArray[i * 3] * 255).toInt().coerceIn(0, 255)
            val g = (floatArray[i * 3 + 1] * 255).toInt().coerceIn(0, 255)
            val b = (floatArray[i * 3 + 2] * 255).toInt().coerceIn(0, 255)
            pixels[i] = Color.rgb(r, g, b)
        }

        bitmap.setPixels(pixels, 0, width, 0, 0, width, height)
        return bitmap
    }
}