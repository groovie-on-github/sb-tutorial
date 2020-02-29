package com.example.sbtutorial.helper

import org.springframework.stereotype.Service
import java.time.Instant
import java.time.LocalDateTime
import java.time.ZoneId
import java.time.temporal.ChronoUnit.*
import java.util.*

@Service
object TimeHelper {

    private val units = listOf(YEARS, MONTHS, WEEKS, DAYS, HOURS, MINUTES, SECONDS)

    fun timeAgoInWords(date: Date): Pair<String, Long> {
        var unit = units.last()
        var amount = 0L

        for(u in units) {
            val between = u.between(LocalDateTime.ofInstant(date.toInstant(), ZoneId.systemDefault()),
                                    LocalDateTime.now())
            if(between > 0) { unit = u; amount = between; break }
        }

        return when(unit) {
            YEARS -> Pair("view.microposts.time.ago.years", amount)
            MONTHS -> Pair("view.microposts.time.ago.months", amount)
            WEEKS -> Pair("view.microposts.time.ago.weeks", amount)
            DAYS -> Pair("view.microposts.time.ago.days", amount)
            HOURS -> Pair("view.microposts.time.ago.hours", amount)
            MINUTES -> Pair("view.microposts.time.ago.minutes", amount)
            SECONDS -> Pair("view.microposts.time.ago.seconds", amount)
            else ->  Pair("view.microposts.time.ago.seconds", amount)
        }
    }
}