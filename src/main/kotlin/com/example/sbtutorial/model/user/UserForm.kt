package com.example.sbtutorial.model.user

import com.example.sbtutorial.model.IHavePassword
import com.example.sbtutorial.validation.PasswordConfirm
import java.util.*
import javax.validation.constraints.Email
import javax.validation.constraints.NotBlank
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

@PasswordConfirm(message = "{user.passwordConfirmation.PasswordConfirm}")
class UserForm(name: String = "", email: String = "",
               password: String = "", passwordConfirmation: String = ""): IHavePassword {

    companion object {
        fun from(user: User): UserForm = UserForm(user.name, user.email).apply { id = user.id }
    }

    var id: UUID? = null

    @NotBlank(message = "{user.name.NotBlank}")
    @Size(max = User.NAME_LENGTH_MAX, message = "{user.name.Size}")
    var name: String = name
        set(value) { field = value.trim() }

    @NotBlank(message = "{user.email.NotBlank}")
    @Size(max = User.EMAIL_LENGTH_MAX, message = "{user.email.Size}")
    @Email(regexp = User.VALID_EMAIL_REGEX, flags = [Pattern.Flag.CASE_INSENSITIVE],
           message = "{user.email.Email}")
    var email: String = email
        set(value) { field = value.trim() }

    @NotBlank(message = "{user.password.NotBlank}")
    @Size(min = User.PASSWORD_LENGTH_MIN, message = "{user.password.Size}")
    override var password: String = password
        set(value) { field = value.trim() }

    override var passwordConfirmation: String = passwordConfirmation


    fun populate(user: User): User {
        user.name = name
        user.email = email
        user.password = password
        user.passwordConfirmation = passwordConfirmation

        return user
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is User) return false
        if (!super.equals(other)) return false

        if (name != other.name) return false
        if (email != other.email) return false
        if (password != other.password) return false
        if (passwordConfirmation != other.passwordConfirmation) return false

        return true
    }

    override fun hashCode(): Int {
        var result = super.hashCode()
        result = 31 * result + name.hashCode()
        result = 31 * result + email.hashCode()
        result = 31 * result + password.hashCode()
        result = 31 * result + passwordConfirmation.hashCode()
        return result
    }

    override fun toString(): String {
        return super.toString().format("User",
            "name='$name', email='$email', password='[PROTECTED]', passwordConfirmation='[PROTECTED]'")
    }
}