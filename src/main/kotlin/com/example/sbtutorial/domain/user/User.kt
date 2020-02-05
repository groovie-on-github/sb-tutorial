package com.example.sbtutorial.domain.user

import com.example.sbtutorial.domain.base.BaseEntity
import com.example.sbtutorial.domain.micropost.Micropost
import java.util.UUID
import javax.persistence.*
import javax.validation.constraints.Email
import javax.validation.constraints.NotBlank

@Entity
@Table(name = "\"user\"")//'user'はDBMSの予約語の為、HerokuでAuto-DDLを使用する場合エスケープが必要)
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

    @OneToMany(mappedBy = "user", cascade = [CascadeType.ALL], orphanRemoval = true)
    val microposts: MutableList<Micropost> = mutableListOf()


    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is User) return false
        if (!super.equals(other)) return false

        if (name != other.name) return false
        if (email != other.email) return false
        if (id != other.id) return false

        return true
    }

    override fun hashCode(): Int {
        var result = super.hashCode()
        result = 31 * result + name.hashCode()
        result = 31 * result + email.hashCode()
        result = 31 * result + (id?.hashCode() ?: 0)
        return result
    }

    override fun toString(): String {
        return "User(id=$id, name='$name', email='$email', ${super.toString()})"
    }
}
