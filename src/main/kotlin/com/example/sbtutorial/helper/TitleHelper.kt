package com.example.sbtutorial.helper

import org.springframework.stereotype.Service

@Service
object TitleHelper {

    const val BASE_TITLE = "Spring Boot Sample App"

    fun getFullTitle(title: String?): String {
        return if(title == null || title.isBlank()) BASE_TITLE else "$title | $BASE_TITLE"
    }
}
