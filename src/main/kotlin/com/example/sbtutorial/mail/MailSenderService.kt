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

@Service
class MailSenderService(private val mailSender: JavaMailSender) {

	private val log = LogFactory.getLog(MailSenderService::class.java)

    fun accountActivation(to: String, params: Map<String, Any>) {
		log.debug("#accountActivation called!!")
		val context = Context().apply { setVariables(params) }
		var text = ""; var html = ""

		try {
			mailSender.send { mimeMessage ->
				val helper = MimeMessageHelper(mimeMessage, true, Charsets.UTF_8.toString())
				helper.setFrom("no-reply@example.com")
				helper.setTo(to)
				helper.setSubject("Account activation")

				text = getMailBody(textMailTemplateResolver(), "accountActivation", context)
				html = getMailBody(htmlMailTemplateResolver(), "accountActivation", context)
				log.debug(">> text mail")
				log.debug(text)
				log.debug(">> html mail")
				log.debug(html)

				helper.setText(text, html)
			}
		} catch (e: Exception) {
			log.debug(">> $e")
			throw SendFailedException("couldn't send mail", text, html, e)
		}
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

class SendFailedException(val msg: String, val text: String, val html: String, val e: Exception): Exception(msg, e)
