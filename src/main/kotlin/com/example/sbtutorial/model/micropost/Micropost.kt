package com.example.sbtutorial.model.micropost

import com.example.sbtutorial.model.BaseEntity
import com.example.sbtutorial.model.picture.Picture
import com.example.sbtutorial.model.user.User
import javax.persistence.*
import javax.validation.constraints.NotBlank
import javax.validation.constraints.NotNull
import javax.validation.constraints.Size

@Entity
class Micropost(content: String, user: User, picture: Picture? = null): BaseEntity() {

    companion object {
        const val CONTENT_LENGTH_MAX = 140
    }

    @NotBlank(message = "{micropost.content.NotBlank}")
    @Size(max = CONTENT_LENGTH_MAX, message = "{micropost.content.Size}")
    @Column(nullable = false, length = CONTENT_LENGTH_MAX)
    var content: String = content

    @NotNull(message = "{micropost.user.NotNull}")
    @ManyToOne
    val user: User = user

    @ManyToOne(cascade = [CascadeType.ALL])
    var picture: Picture? = picture


    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is Micropost) return false
        if (!super.equals(other)) return false

        if (content != other.content) return false
        if (user != other.user) return false

        return true
    }

    override fun hashCode(): Int {
        var result = super.hashCode()
        result = 31 * result + content.hashCode()
        result = 31 * result + user.hashCode()
        return result
    }

    override fun toString(): String {
        return super.toString().format("Micropost", "content='$content', user=$user")
    }
}