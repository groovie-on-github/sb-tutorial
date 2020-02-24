package com.example.sbtutorial.mail

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.test.web.servlet.MockMvc
import org.springframework.web.util.UriComponentsBuilder
import java.util.*
import com.example.sbtutorial.helper.TestHelper as TH

@SpringBootTest
@AutoConfigureMockMvc
class MailSenderServiceTests @Autowired constructor(
    private val mvc: MockMvc, private val mailSenderService: MailSenderService) {

    @Test
    fun `送れないはず`() {
        val result = TH.get(mvc, "/")

        val url = UriComponentsBuilder.fromHttpUrl(result.request.requestURL.toString())
            .path("/account_activation/sometoken/edit")
            .queryParam("email", "{email}").build("user@example.com").toString()

        val params = mapOf("name" to "user name", "url" to url)

        try {
            mailSenderService.accountActivation("user@example.com", params, Locale.US)
            fail<String>("expect some exception")
        } catch (e: Exception) {
            assertThat(e).isInstanceOf(SendFailedException::class.java)
            val sfe = e as SendFailedException
            println(">>")
            println(sfe.text)
            println(">>")
            println(sfe.html)
        }
    }
}
