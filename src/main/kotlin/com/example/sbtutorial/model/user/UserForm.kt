package com.example.sbtutorial.model.user

import com.example.sbtutorial.model.IHavePassword
import com.example.sbtutorial.model.UpdateGroup
import com.example.sbtutorial.validation.PasswordConfirm
import org.springframework.security.crypto.password.PasswordEncoder
import java.util.*
import javax.validation.constraints.*
import javax.validation.groups.Default

@PasswordConfirm(message = "{user.passwordConfirmation.PasswordConfirm}",
                 groups = [Default::class, UpdateGroup::class])
class UserForm(name: String = "", email: String = "",
               password: String = "", passwordConfirmation: String = "",
               private val passwordEncoder: PasswordEncoder): IHavePassword {

    companion object {
        fun from(user: User, passwordEncoder: PasswordEncoder): UserForm =
            UserForm(user.name, user.email, passwordEncoder = passwordEncoder) .apply { this.id = user.id }
    }

    var id: UUID? = null
        private set

    @NotBlank(message = "{user.name.NotBlank}", groups = [Default::class, UpdateGroup::class])
    @Size(max = User.NAME_LENGTH_MAX, message = "{user.name.Size}", groups = [Default::class, UpdateGroup::class])
    var name: String? = name
        set(value) { field = value?.trim() }

    @NotBlank(message = "{user.email.NotBlank}", groups = [Default::class, UpdateGroup::class])
    @Size(max = User.EMAIL_LENGTH_MAX, message = "{user.email.Size}", groups = [Default::class, UpdateGroup::class])
    @Email(regexp = User.VALID_EMAIL_REGEX, flags = [Pattern.Flag.CASE_INSENSITIVE],
           message = "{user.email.Email}", groups = [Default::class, UpdateGroup::class])
    var email: String? = email
        set(value) { field = value?.trim() }

    @NotBlank(message = "{user.password.NotBlank}")
    @Size(min = User.PASSWORD_LENGTH_MIN, message = "{user.password.Size}",
          groups = [Default::class, UpdateGroup::class])
    override var password: String? = password
        set(value) { field = value?.trim() }

    override var passwordConfirmation: String? = passwordConfirmation


    fun populate(user: User): User {
        user.name = name!!
        user.email = email!!

        if(password != null && password!!.length >= User.PASSWORD_LENGTH_MIN && password == passwordConfirmation) {
            user.passwordDigest = passwordEncoder.encode(password!!)
        }

        return user
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is UserForm) return false

        if (id != other.id) return false
        if (name != other.name) return false
        if (email != other.email) return false
        if (password != other.password) return false
        if (passwordConfirmation != other.passwordConfirmation) return false

        return true
    }

    override fun hashCode(): Int {
        var result = id?.hashCode() ?: 0
        result = 31 * result + (name?.hashCode() ?: 0)
        result = 31 * result + (email?.hashCode() ?: 0)
        result = 31 * result + (password?.hashCode() ?: 0)
        result = 31 * result + (passwordConfirmation?.hashCode() ?: 0)
        return result
    }

    override fun toString(): String {
        return "UserForm(id=$id, name=$name, email=$email, password=[PROTECTED], passwordConfirmation=[PROTECTED])"
    }
}