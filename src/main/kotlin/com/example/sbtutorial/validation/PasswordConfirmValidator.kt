package com.example.sbtutorial.validation

import com.example.sbtutorial.model.IHavePassword
import javax.validation.ConstraintValidator
import javax.validation.ConstraintValidatorContext

class PasswordConfirmValidator: ConstraintValidator<PasswordConfirm, IHavePassword> {

    private lateinit var message: String

    override fun initialize(constraintAnnotation: PasswordConfirm?) {
        message = constraintAnnotation!!.message
    }

    override fun isValid(value: IHavePassword?, context: ConstraintValidatorContext?): Boolean {
        if(value == null) return false

        return if(value.password == value.passwordConfirmation) {
            true

        } else {
            context!!.disableDefaultConstraintViolation()
            context.buildConstraintViolationWithTemplate(message)
                .addPropertyNode("passwordConfirmation").addConstraintViolation()

            false
        }
    }
}
