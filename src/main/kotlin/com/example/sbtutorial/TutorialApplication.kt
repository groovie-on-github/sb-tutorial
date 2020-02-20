package com.example.sbtutorial

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class TutorialApplication

fun main(args: Array<String>) {
	runApplication<TutorialApplication>(*args)//.also { it.beanDefinitionNames.sorted().forEach(::println) }
}
