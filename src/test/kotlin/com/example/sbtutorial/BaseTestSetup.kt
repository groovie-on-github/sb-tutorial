package com.example.sbtutorial

import com.gargoylesoftware.htmlunit.WebClient
import org.junit.jupiter.api.BeforeEach
import org.springframework.boot.test.autoconfigure.orm.jpa.AutoConfigureDataJpa
import org.springframework.context.annotation.ComponentScan
import org.springframework.test.context.jdbc.Sql
import org.springframework.transaction.annotation.Transactional

@ComponentScan("com.example.sbtutorial.helper", "com.example.sbtutorial.auth", "com.example.sbtutorial.model.user",
    "com.example.sbtutorial.config", "com.example.sbtutorial.mail", "org.springframework.boot.autoconfigure.mail"
)
@AutoConfigureDataJpa
@Transactional
@Sql("/data.sql")
abstract class BaseTestSetup(private val client: WebClient?) {

    @BeforeEach
    fun setUp() {
        client?.addRequestHeader("Accept-Language", "en")
    }
}
