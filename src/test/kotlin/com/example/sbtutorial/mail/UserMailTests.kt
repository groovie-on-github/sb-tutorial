package com.example.sbtutorial.mail

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.model.user.AuthenticationType
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import org.assertj.core.api.Assertions.assertThat
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.web.util.UriComponentsBuilder
import java.net.URLEncoder
import java.util.*
import javax.mail.internet.MimeMultipart

@SpringBootTest
@AutoConfigureMockMvc
class UserMailTests @Autowired constructor(private val us: UsersService,
                                           private val ms: MailSenderService): BaseTestSetup(null) {

    private lateinit var user: User

    @BeforeEach
    override fun setUp() {
        super.setUp()
        user = us.findByEmail("michael@example.com")!!
    }

    @Test
    fun `account_activation`() {
        val userForm = UserForm(us, user).apply { createActivationToken(); save() }
        val activationUrl = userForm.authenticationUrl(AuthenticationType.ACTIVATION,
            UriComponentsBuilder.fromHttpUrl("http://localhost"))

        val mail = try {
            ms.accountActivation(user.email, mapOf("name" to user.name, "url" to activationUrl), Locale.ENGLISH)
        } catch (e: SendFailedException) {
            e.mail
        }

        assertThat(mail.subject).isEqualTo("Account activation")
        assertThat(mail.allRecipients).extractingResultOf("toString").containsExactly(user.email)
        assertThat(mail.from).extractingResultOf("toString").containsExactly("no-reply@example.com")

        val textContent = getTextContent(mail.content as MimeMultipart)
        assertThat(textContent).contains(user.name, activationUrl,
            URLEncoder.encode(user.email, Charsets.UTF_8.toString()))
    }

    @Test
    fun `password_reset`() {
        val userForm = UserForm(us, user).apply { createResetToken(); save() }
        val resetUrl = userForm.authenticationUrl(AuthenticationType.PASSWORD_RESET,
            UriComponentsBuilder.fromHttpUrl("http://localhost"))

        val mail = try {
            ms.passwordReset(user.email, mapOf("url" to resetUrl), Locale.ENGLISH)
        } catch (e: SendFailedException) {
            e.mail
        }

        assertThat(mail.subject).isEqualTo("Password reset")
        assertThat(mail.allRecipients).extractingResultOf("toString").containsExactly(user.email)
        assertThat(mail.from).extractingResultOf("toString").containsExactly("no-reply@example.com")

        val textContent = getTextContent(mail.content as MimeMultipart)
        assertThat(textContent).contains(resetUrl, URLEncoder.encode(user.email, Charsets.UTF_8))
    }

    private fun getTextContent(part: MimeMultipart): String {
        for(i in 0 until part.count) {
            val body = part.getBodyPart(i)
            val content = body.content
            return if(content is String) content
                   else if(content is MimeMultipart) getTextContent(content)
                   else continue
        }
        throw IllegalArgumentException("no text message")
    }
}
