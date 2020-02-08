package com.example.sbtutorial

import com.gargoylesoftware.htmlunit.WebClient
import org.junit.jupiter.api.BeforeEach
import org.springframework.context.annotation.ComponentScan

@ComponentScan("com.example.sbtutorial.helper")
abstract class BaseTestSetup(private val client: WebClient) {

    @BeforeEach
    fun setUp() {
        client.addRequestHeader("Accept-Language", "en")
    }
}
