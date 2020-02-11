package com.example.sbtutorial

import com.gargoylesoftware.htmlunit.WebClient
import org.springframework.boot.test.autoconfigure.orm.jpa.AutoConfigureDataJpa
import org.springframework.test.context.jdbc.Sql
import org.springframework.transaction.annotation.Transactional

@AutoConfigureDataJpa
@Transactional
@Sql("/data.sql")
abstract class BaseTestUseDataJpa(client: WebClient): BaseTestSetup(client)