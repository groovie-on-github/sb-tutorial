package com.example.sbtutorial.model.user

import com.example.sbtutorial.model.BaseEntity
import com.example.sbtutorial.model.IHavePassword
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import javax.persistence.*
import javax.validation.constraints.Email
import javax.validation.constraints.NotBlank
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

@Entity
@Table(name = "\"user\"")
class User(name: String = "", email: String = "",
           password: String = "", passwordConfirm: String = ""): BaseEntity(), IHavePassword {

    companion object {
        const val NAME_LENGTH_MAX = 50
        const val EMAIL_LENGTH_MAX = 255
        const val VALID_EMAIL_REGEX = """\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z"""
        const val PASSWORD_LENGTH_MIN = 6
    }

    @NotBlank(message = "{user.name.NotBlank}")
    @Size(max = NAME_LENGTH_MAX, message = "{user.name.Size}")
    @Column(nullable = false, length = NAME_LENGTH_MAX)
    var name: String = name
        set(value) { field = value.trim() }

    @NotBlank(message = "{user.email.NotBlank}")
    @Size(max = EMAIL_LENGTH_MAX, message = "{user.email.Size}")
    @Email(regexp = VALID_EMAIL_REGEX, flags = [Pattern.Flag.CASE_INSENSITIVE],
           message = "{user.email.Email}")
    @Column(nullable = false, length = EMAIL_LENGTH_MAX, unique = true)
    var email: String = email
        set(value) { field = value.trim() }

    @Transient
    override var password: String = password
        set(value) { field = value.trim() }

    @Transient
    override var passwordConfirmation: String = passwordConfirm

    @Column(nullable = false)
    var passwordDigest: String? = null


    @PrePersist @PreUpdate
    private fun OnPrePersistOrUpdate() {
        email = email.toLowerCase()

        if(password.length >= PASSWORD_LENGTH_MIN && password == passwordConfirmation) {
            passwordDigest = BCryptPasswordEncoder().encode(password)
        }
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is User) return false
        if (!super.equals(other)) return false

        if (name != other.name) return false
        if (email != other.email) return false
        if (password != other.password) return false
        if (passwordConfirmation != other.passwordConfirmation) return false
        if (passwordDigest != other.passwordDigest) return false

        return true
    }

    override fun hashCode(): Int {
        var result = super.hashCode()
        result = 31 * result + name.hashCode()
        result = 31 * result + email.hashCode()
        result = 31 * result + password.hashCode()
        result = 31 * result + passwordConfirmation.hashCode()
        result = 31 * result + (passwordDigest?.hashCode() ?: 0)
        return result
    }

    override fun toString(): String {
        return super.toString().format("User",
            "name='$name', email='$email', password='[PROTECTED]', passwordConfirmation='[PROTECTED]', passwordDigest='[PROTECTED]'")
    }
}
