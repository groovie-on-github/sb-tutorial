package com.example.sbtutorial.helper

import org.springframework.stereotype.Service
import org.springframework.util.DigestUtils

@Service
object UsersHelper {

    private const val GRAVATAR_URL = "https://secure.gravatar.com/avatar/%s?s=%s%s"

    private val DEFAULT_IMAGES = listOf("mp", "identicon", "monsterid", "wavatar", "retro", "robohash")

    fun gravatarFor(email: String, options: Map<String, Any>?): String {
        val size = options?.get("size") ?: 80
        val default = when(val num = (0..DEFAULT_IMAGES.size).random()) {
            DEFAULT_IMAGES.size -> ""
            else -> "&d=" + DEFAULT_IMAGES[num]
        }

        return GRAVATAR_URL.format(DigestUtils.md5DigestAsHex(email.toByteArray()), size, default)
    }
}