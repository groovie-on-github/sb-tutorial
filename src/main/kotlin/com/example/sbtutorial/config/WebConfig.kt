package com.example.sbtutorial.config

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.MessageSource
import org.springframework.context.annotation.Configuration
import org.springframework.validation.Validator
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer

@Configuration
class WebConfig: WebMvcConfigurer {

    @Autowired
    private lateinit var messageSource: MessageSource

    override fun getValidator(): Validator? {
        return LocalValidatorFactoryBean().apply { setValidationMessageSource(messageSource) }
    }
}