package com.example.sbtutorial.domain.user

import com.example.sbtutorial.domain.base.BaseEntity
import java.util.UUID
import javax.persistence.*
import javax.validation.constraints.Email
import javax.validation.constraints.NotBlank

@Entity
class User(name: String = "", email: String = ""): BaseEntity() {

    @NotBlank
    var name: String = name
        set(value) { field = value.trim() }

    @NotBlank
    @Email
    @Column(unique = true)
    var email: String = email
        set(value) { field = value.trim() }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    var id: UUID? = null


    override fun toString(): String {
        return "User(name='$name', email='$email', id=$id)"
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as User

        if (name != other.name) return false
        if (email != other.email) return false
        if (id != other.id) return false

        return true
    }

    override fun hashCode(): Int {
        var result = name.hashCode()
        result = 31 * result + email.hashCode()
        result = 31 * result + id.hashCode()
        return result
    }
}
