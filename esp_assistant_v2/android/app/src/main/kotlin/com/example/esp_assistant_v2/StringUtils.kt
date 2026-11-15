package com.example.esp_assistant_v2

/**
 * Extension function to convert a string direction identifier to a user-friendly
 * Chinese description.
 */
fun String.toCnDirection(): String {
    return when (this) {
        "front" -> "正前方"
        "left" -> "左方"
        "right" -> "右方"
        "top" -> "上方"
        "bottom" -> "下方"
        "front-left" -> "左前方"
        "front-right" -> "右前方"
        "back-left" -> "左后方"
        "back-right" -> "右后方"
        else -> this // Return original string if no match
    }
}
