package com.example.sbtutorial.validation

import javax.validation.Constraint
import javax.validation.Payload
import kotlin.reflect.KClass

@MustBeDocumented
@Constraint(validatedBy = [PasswordConfirmValidator::class])
@Target(AnnotationTarget.CLASS)
@Retention(AnnotationRetention.RUNTIME)
annotation class PasswordConfirm(
    val message: String = "{com.example.sbtutorial.validation.PasswordConfirm.message}",
    val groups: Array<KClass<*>> = [],
    val payload: Array<KClass<out Payload>> = [])
