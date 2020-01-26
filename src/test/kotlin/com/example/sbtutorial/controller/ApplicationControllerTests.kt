package com.example.sbtutorial.controller

import org.hamcrest.CoreMatchers.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.*

// サーブレットコンテナを起動する場合
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureMockMvc
// サーブレットコンテナを起動しない場合
//@WebMvcTest
class ApplicationControllerTests(@Autowired private val mockMvc: MockMvc) {

    @Test
    fun `ルート直下のアクセスは認証なし`() {
        mockMvc.perform(get("/"))
                .andExpect(status().isOk)
                .andExpect(content().string("hello, world!"))
    }

    @Test
    fun `ルート直下に存在するURLはOK`() {
        mockMvc.perform(get("/found"))
                .andExpect(status().isOk)
                .andExpect(content().string(containsString("found")))
    }

    @Test
    fun `ルート直下でも存在しないURLは404エラー`() {
        mockMvc.perform(get("/notFound"))
                .andExpect(status().isNotFound)
    }

    @Test
    fun `ルート直下でない、ネストしたURLは拒否`() {
        mockMvc.perform(get("/found/nest"))
                .andExpect(status().isForbidden)
    }
}
