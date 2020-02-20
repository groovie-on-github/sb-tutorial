package com.example.sbtutorial

import com.example.sbtutorial.auth.AccountService
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import org.junit.jupiter.api.BeforeEach
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.AutoConfigureDataJpa
import org.springframework.context.annotation.ComponentScan
import org.springframework.context.annotation.FilterType
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import org.springframework.test.context.jdbc.Sql
import org.springframework.transaction.annotation.Transactional

@ComponentScan("com.example.sbtutorial.helper", "com.example.sbtutorial.auth", "com.example.sbtutorial.model.user",
    includeFilters = [ComponentScan.Filter(AccountService::class, UsersService::class,
        type = FilterType.ASSIGNABLE_TYPE)])
@AutoConfigureDataJpa
@Transactional
@Sql("/data.sql")
abstract class BaseTestSetup(private val client: WebClient?) {

    @Autowired
    lateinit var pe: BCryptPasswordEncoder

    @BeforeEach
    fun setUp() {
        client?.addRequestHeader("Accept-Language", "en")
    }
}
