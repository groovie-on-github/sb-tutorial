package com.example.sbtutorial.mail

import org.apache.commons.logging.LogFactory
import org.springframework.mail.javamail.JavaMailSender
import org.springframework.mail.javamail.MimeMessageHelper
import org.springframework.stereotype.Service
import org.thymeleaf.context.Context
import org.thymeleaf.spring5.SpringTemplateEngine
import org.thymeleaf.templatemode.TemplateMode
import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver
import java.lang.Exception
import java.util.*
import javax.mail.internet.MimeMessage

@Service
class MailSenderService(private val mailSender: JavaMailSender) {

	private val log = LogFactory.getLog(MailSenderService::class.java)

    fun accountActivation(to: String, params: Map<String, Any>, locale: Locale): MimeMessage {
		log.debug("#accountActivation called!!")
		return sendMail("no-reply@example.com", to, "Account activation", "accountActivation", params, locale)
	}

	fun passwordReset(to:String, params: Map<String, Any>, locale: Locale): MimeMessage {
		log.debug("#passwordReset called!!")
		return sendMail("no-reply@example.com", to, "Password reset", "passwordReset", params, locale)
	}

	private fun sendMail(from: String, to:String, subject: String, template: String,
						 params: Map<String, Any>, locale: Locale): MimeMessage {
		log.debug("#sendMail called!!")
		val context = Context(locale, params)
		var text = ""; var html = ""
		lateinit var mail: MimeMessage

		try {
			mailSender.send { mimeMessage ->
				val helper = MimeMessageHelper(mimeMessage, true, Charsets.UTF_8.toString())
				helper.setFrom(from)
				helper.setTo(to)
				helper.setSubject(subject)

				text = getMailBody(textMailTemplateResolver(), template, context)
				html = getMailBody(htmlMailTemplateResolver(), template, context)
				log.debug(">> text mail")
				log.debug(text)
				log.debug(">> html mail")
				log.debug(html)

				helper.setText(text, html)
				mail = mimeMessage
			}
		} catch (e: Exception) {
			log.debug(">> $e")
			throw SendFailedException("couldn't send mail", mail, text, html, e)
		}

		return mail
	}

	private fun textMailTemplateResolver(): ClassLoaderTemplateResolver {
		val templateResolver = ClassLoaderTemplateResolver()
		templateResolver.templateMode = TemplateMode.TEXT
		templateResolver.prefix = "templates/mail/"
		templateResolver.suffix = ".txt"
		templateResolver.characterEncoding = "UTF-8"
		templateResolver.isCacheable = true
		return templateResolver
	}

	private fun htmlMailTemplateResolver(): ClassLoaderTemplateResolver {
		val templateResolver = ClassLoaderTemplateResolver()
		templateResolver.templateMode = TemplateMode.HTML
		templateResolver.prefix = "templates/mail/"
		templateResolver.suffix = ".html"
		templateResolver.characterEncoding = "UTF-8"
		templateResolver.isCacheable = true
		return templateResolver
	}

	private fun getMailBody(resolver: ClassLoaderTemplateResolver, templateName: String, context: Context): String {
		val templateEngine = SpringTemplateEngine()
		templateEngine.setTemplateResolver(resolver)
		return templateEngine.process(templateName, context)
	}

}

class SendFailedException(val msg: String, val mail: MimeMessage,
						  val text: String, val html: String, val e: Exception): Exception(msg, e)
