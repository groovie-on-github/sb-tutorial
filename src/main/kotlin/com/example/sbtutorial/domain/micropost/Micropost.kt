package com.example.sbtutorial.domain.micropost

import com.example.sbtutorial.domain.base.BaseEntity
import com.example.sbtutorial.domain.user.User
import java.util.UUID
import javax.persistence.*
import javax.validation.constraints.NotBlank
import javax.validation.constraints.NotNull
import javax.validation.constraints.Size

@Entity
class Micropost(content: String = "", user: User? = null): BaseEntity() {

    @NotBlank
    @Size(min = 1, max = 140)
    var content: String = content
        set(value) { field = value.trim() }

    @NotNull
    @ManyToOne
    var user: User? = user

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    var id: UUID? = null


    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is Micropost) return false
        if (!super.equals(other)) return false

        if (content != other.content) return false
        if (user != other.user) return false
        if (id != other.id) return false

        return true
    }

    override fun hashCode(): Int {
        var result = super.hashCode()
        result = 31 * result + content.hashCode()
        result = 31 * result + (user?.hashCode() ?: 0)
        result = 31 * result + (id?.hashCode() ?: 0)
        return result
    }

    override fun toString(): String {
        return "Micropost(id=$id, content='$content', ${super.toString()}, user=$user)"
    }
}
