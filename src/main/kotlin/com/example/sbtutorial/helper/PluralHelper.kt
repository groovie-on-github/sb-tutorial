package com.example.sbtutorial.helper

import com.ibm.icu.text.MessageFormat
import org.springframework.stereotype.Service
import java.util.*

@Service
object PluralHelper {

    fun pluralize(pattern: String, locale: Locale, vararg value: Any): String {
        return MessageFormat(pattern, locale).format(arrayOf(*value))
    }
}