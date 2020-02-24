package com.example.sbtutorial

import org.apache.commons.logging.LogFactory
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class TutorialApplication

private val log = LogFactory.getLog(TutorialApplication::class.java)

fun main(args: Array<String>) {
	runApplication<TutorialApplication>(*args)
		.also { it.beanDefinitionNames.sorted().forEach(log::debug) }
}
