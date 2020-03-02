package com.example.sbtutorial.model.user

import com.example.sbtutorial.model.BaseEntity
import com.example.sbtutorial.model.micropost.Micropost
import org.hibernate.annotations.ColumnDefault
import java.util.*
import javax.persistence.*
import javax.validation.constraints.Email
import javax.validation.constraints.NotBlank
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

@Entity
@Table(name = "\"user\"")
class User(name: String = "", email: String = ""): BaseEntity() {

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

    @NotBlank(message = "{user.email.NotBlank}")
    @Size(max = EMAIL_LENGTH_MAX, message = "{user.email.Size}")
    @Email(regexp = VALID_EMAIL_REGEX, flags = [Pattern.Flag.CASE_INSENSITIVE],
           message = "{user.email.Email}")
    @Column(nullable = false, length = EMAIL_LENGTH_MAX, unique = true)
    var email: String = email

    @Column(nullable = false)
    var passwordDigest: String? = null

    @Column(nullable = false)
    @ColumnDefault("false")
    final var isAdmin: Boolean = false
        private set

    @ColumnDefault("false")
    var isActivated: Boolean = false

    var activationDigest: String? = null

    var activatedAt: Date? = null

    var resetDigest: String? = null

    var resetSentAt: Date? = null

    @OrderBy("createdAt DESC")
    @OneToMany(cascade = [CascadeType.ALL], orphanRemoval = true, mappedBy = "user")
    val micropostList: MutableList<Micropost> = mutableListOf()

    @ManyToMany
    @JoinTable(
        name = "user_relationships",
        joinColumns = [JoinColumn(name = "follower_id")],
        inverseJoinColumns = [JoinColumn(name = "followed_id")],
        indexes = [Index(unique = true, columnList = "follower_id, followed_id")])
    val following: MutableList<User> = mutableListOf()

    @ManyToMany
    @JoinTable(
        name = "user_relationships",
        joinColumns = [JoinColumn(name = "followed_id")],
        inverseJoinColumns = [JoinColumn(name = "follower_id")],
        indexes = [Index(unique = true, columnList = "follower_id, followed_id")])
    val followers: MutableList<User> = mutableListOf()


    @PrePersist
    @PreUpdate
    private fun OnPrePersistOrUpdate() {
        email = email.toLowerCase()
    }


    override fun toString(): String {
        return super.toString().format("User",
            "name='$name', email='$email', passwordDigest='$passwordDigest', isAdmin='[PROTECTED]', " +
                "isActivated=$isActivated, activationDigest='$activationDigest', activatedAt=$activatedAt, " +
                "resetDigest='$resetDigest', resetSentAt=$resetSentAt")
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is User) return false
        if (!super.equals(other)) return false

        if (name != other.name) return false
        if (email != other.email) return false
        if (passwordDigest != other.passwordDigest) return false
        if (isAdmin != other.isAdmin) return false
        if (isActivated != other.isActivated) return false
        if (activationDigest != other.activationDigest) return false
        if (activatedAt != other.activatedAt) return false
        if (resetDigest != other.resetDigest) return false
        if (resetSentAt != other.resetSentAt) return false

        return true
    }

    override fun hashCode(): Int {
        var result = super.hashCode()
        result = 31 * result + name.hashCode()
        result = 31 * result + email.hashCode()
        result = 31 * result + (passwordDigest?.hashCode() ?: 0)
        result = 31 * result + isAdmin.hashCode()
        result = 31 * result + isActivated.hashCode()
        result = 31 * result + (activationDigest?.hashCode() ?: 0)
        result = 31 * result + (activatedAt?.hashCode() ?: 0)
        result = 31 * result + (resetDigest?.hashCode() ?: 0)
        result = 31 * result + (resetSentAt?.hashCode() ?: 0)
        return result
    }
}
