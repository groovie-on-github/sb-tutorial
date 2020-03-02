package com.example.sbtutorial.helper

import org.springframework.stereotype.Service
import org.springframework.util.DigestUtils
import kotlin.math.absoluteValue

@Service
object UsersHelper {

    private const val GRAVATAR_URL = "https://secure.gravatar.com/avatar/%s(%s)"

    private val DEFAULT_IMAGES = listOf("mp", "identicon", "monsterid", "wavatar", "retro", "robohash")

    fun gravatarFor(email: String, gravatarOpts: Map<String, Any>?): String {
        var options = "s='%d'".format(gravatarOpts?.get("size") ?: 80)
        options = when(val num = email.hashCode().absoluteValue % (DEFAULT_IMAGES.size + 1)) {
            DEFAULT_IMAGES.size -> options
            else -> "$options, d='${DEFAULT_IMAGES[num]}'"
        }

        return GRAVATAR_URL.format(DigestUtils.md5DigestAsHex(email.toByteArray()), options)
    }

    fun gravatarSize(size: Int): Map<String, Int> = mapOf("size" to size)
}
