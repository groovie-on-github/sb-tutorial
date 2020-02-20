package com.example.sbtutorial.auth

import org.springframework.boot.context.properties.ConfigurationProperties
import org.springframework.stereotype.Component
import java.util.*

@Component
@ConfigurationProperties("auth")
class AuthProperties {

    val rememberMe = RememberMe()

    val admin = Admin()

    override fun toString(): String {
        return "AuthProperties(rememberMe=$rememberMe, admin=$admin)"
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

    class Admin {

        var name: String = ""

        var email: String = ""

        var password: String = ""

        fun isValid(): Boolean = name.isNotBlank() && email.isNotBlank() && password.isNotBlank()

        override fun toString(): String {
            return "Admin(name='$name', email='$email', password='[PROTECTED]')"
        }
    }
}
