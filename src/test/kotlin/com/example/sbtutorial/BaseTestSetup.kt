package com.example.sbtutorial

import com.gargoylesoftware.htmlunit.WebClient
import org.assertj.core.api.Assertions.assertThat
import org.assertj.core.api.SoftAssertions
import org.assertj.core.api.junit.jupiter.SoftAssertionsExtension
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.extension.ExtendWith
import org.springframework.boot.test.autoconfigure.orm.jpa.AutoConfigureDataJpa
import org.springframework.context.annotation.ComponentScan
import org.springframework.test.context.jdbc.Sql
import org.springframework.transaction.annotation.Transactional

@ComponentScan("com.example.sbtutorial.helper", "com.example.sbtutorial.auth", "com.example.sbtutorial.model",
    "com.example.sbtutorial.config", "com.example.sbtutorial.mail", "org.springframework.boot.autoconfigure.mail"
)
@AutoConfigureDataJpa
@Transactional
@ExtendWith(SoftAssertionsExtension::class)
@Sql("/data-users.sql", "/data-microposts.sql")
abstract class BaseTestSetup(private val client: WebClient?) {

    @BeforeEach
    fun setUp() {
        client?.addRequestHeader("Accept-Language", "en")
    }

    protected fun assertDifference(difference: Long, describe: String, softly: SoftAssertions?, differ: () -> Long, assertion: () -> Unit) {
        val before = differ()

        assertion()

        if(softly == null) assertThat(differ()).describedAs(describe).isEqualTo(before + difference)
        else softly.assertThat(differ()).describedAs(describe).isEqualTo(before + difference)
    }

    protected fun assertNoDifference(describe: String, softly: SoftAssertions?, differ: () -> Long, assertion: () -> Unit) {
        assertDifference(0L, describe, softly, differ, assertion)
    }
}
