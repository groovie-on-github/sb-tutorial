package com.example.sbtutorial.model.user

enum class AuthenticationType(val value: String) {
    ACTIVATION("account_activation"),
    PASSWORD_RESET("password_resets")
}