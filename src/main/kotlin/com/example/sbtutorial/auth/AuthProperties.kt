package com.example.sbtutorial.auth

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.stereotype.Component
import java.util.*

@Component
@ConfigurationProperties("auth")
class AuthProperties {

    val rememberMe = RememberMe()

    override fun toString(): String {
        return "AuthProperties(rememberMe=$rememberMe)"
    }

    class RememberMe {

        var useSecure: Boolean = false

        var cookieName: String = UUID.randomUUID().toString()

        var key: String = UUID.randomUUID().toString()

        var tokenValidityDays: Long = 1L

        override fun toString(): String {
            return "RememberMe(useSecure=$useSecure, cookieName='$cookieName', key='$key', tokenValidityDays=$tokenValidityDays)"
        }
    }
}
