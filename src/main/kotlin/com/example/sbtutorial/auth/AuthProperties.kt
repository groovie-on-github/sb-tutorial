package com.example.sbtutorial.auth

import org.springframework.beans.factory.annotation.Value
import org.springframework.context.annotation.Configuration
import java.util.*

@Configuration
class AuthProperties(@Value("\${auth.remember-me.useSecure}") useSecure: Boolean,
                     @Value("\${auth.remember-me.cookieName}") cookieName: String,
                     @Value("\${auth.remember-me.key}") key: String,
                     @Value("\${auth.remember-me.tokenValidityDays}") tokenValidityDays: Long,
                     @Value("\${auth.admin.name}") name: String,
                     @Value("\${auth.admin.email}") email: String,
                     @Value("\${auth.admin.password}") password: String) {

    val rememberMe: RememberMe = RememberMe(useSecure, cookieName, key, tokenValidityDays)

    val admin: Admin = Admin(name, email, password)

    override fun toString(): String {
        return "AuthProperties(rememberMe=$rememberMe, admin=$admin)"
    }

    class RememberMe(val useSecure: Boolean = false,
                     val cookieName: String = UUID.randomUUID().toString(),
                     val key: String = UUID.randomUUID().toString(),
                     val tokenValidityDays: Long = 1L) {

        override fun toString(): String {
            return "RememberMe(useSecure=$useSecure, cookieName='$cookieName', key='$key', tokenValidityDays=$tokenValidityDays)"
        }
    }

    class Admin(val name: String = "", val email: String = "", val password: String = "") {

        fun isValid(): Boolean = name.isNotBlank() && email.isNotBlank() && password.isNotBlank()

        override fun toString(): String {
            return "Admin(name='$name', email='$email', password='[PROTECTED]')"
        }
    }
}
