package com.example.sbtutorial.model.user

import com.example.sbtutorial.model.BaseForm
import com.example.sbtutorial.model.IHavePassword
import com.example.sbtutorial.model.UpdateGroup
import com.example.sbtutorial.model.micropost.Micropost
import com.example.sbtutorial.model.micropost.MicropostsService
import com.example.sbtutorial.model.user.AuthenticationType.*
import com.example.sbtutorial.validation.PasswordConfirm
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.web.util.UriComponentsBuilder
import java.util.*
import javax.validation.constraints.Email
import javax.validation.constraints.NotBlank
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size
import javax.validation.groups.Default

@PasswordConfirm(message = "{user.passwordConfirmation.PasswordConfirm}",
                 groups = [Default::class, UpdateGroup::class])
class UserForm(usersService: UsersService,
               user: User? = null,
               private val micropostsService: MicropostsService? = null) : BaseForm<User, UsersService>(user, usersService), IHavePassword {

    companion object {

        const val NAME = "userForm"
        const val FEED = "feedItems"

        private const val PASSWORD_RESET_COMPLETE = "password-reset-complete"

        fun from(id: UUID, usersService: UsersService, micropostsService: MicropostsService): UserForm =
            UserForm(usersService, usersService.findById(id), micropostsService)
    }

    init {
        addValidation("validate email existence") { result ->
            return@addValidation when(service.findByEmail(email!!.toLowerCase())) {
                null -> true
                else -> {
                    result.rejectValue("email", "user.email.Used", arrayOf(email), "Email is already used")
                    false
                }
            }
        }
    }


    val id: UUID?
        get() = entity?.id

    @NotBlank(message = "{user.name.NotBlank}", groups = [Default::class, UpdateGroup::class])
    @Size(max = User.NAME_LENGTH_MAX, message = "{user.name.Size}", groups = [Default::class, UpdateGroup::class])
    var name: String? = entity?.name
        set(value) { field = value?.trim() }

    @NotBlank(message = "{user.email.NotBlank}", groups = [Default::class, UpdateGroup::class])
    @Size(max = User.EMAIL_LENGTH_MAX, message = "{user.email.Size}", groups = [Default::class, UpdateGroup::class])
    @Email(regexp = User.VALID_EMAIL_REGEX, flags = [Pattern.Flag.CASE_INSENSITIVE],
           message = "{user.email.Email}", groups = [Default::class, UpdateGroup::class])
    var email: String? = entity?.email
        set(value) { field = value?.trim() }

    @NotBlank(message = "{user.password.NotBlank}")
    @Size(min = User.PASSWORD_LENGTH_MIN, message = "{user.password.Size}",
          groups = [Default::class, UpdateGroup::class])
    override var password: String? = null
        set(value) { field = value?.trim() }

    override var passwordConfirmation: String? = null

    var isActivated: Boolean = entity?.isActivated ?: false
        private set

    private var activationToken: String = ""

    var resetToken: String = ""

    val resetSentAt: Date?
        get() = entity?.resetSentAt

    private var activatedAt: Date? = null

    val micropostsCount: Long
        get() = micropostsService!!.countByUser(entity!!)

    val followingCount: Long
        get() = service.getFollowingCount(entity!!)

    val followersCount: Long
        get() = service.getFollowersCount(entity!!)


    fun authenticate(type: AuthenticationType, token: String): Boolean =
        when(type) {
            ACTIVATION -> if(entity?.activationDigest == null) false
                          else service.authenticate(token, entity!!.activationDigest!!) {
                              isActivated = true
                              activatedAt = Date()
                              save()
                          }

            PASSWORD_RESET -> if(entity?.resetDigest == null) false
                              else service.authenticate(token, entity!!.resetDigest!!)
        }

    fun authenticationUrl(type: AuthenticationType, builder: UriComponentsBuilder): String =
        when(type) {
            ACTIVATION ->  service.buildAuthenticationUrl(type, builder, email!!, activationToken)
            PASSWORD_RESET -> service.buildAuthenticationUrl(type, builder, email!!, resetToken)
        }

    fun createActivationToken() { activationToken = service.newToken() }

    fun createResetToken() { resetToken = service.newToken() }

    fun passwordResetComplete() { resetToken = PASSWORD_RESET_COMPLETE }

    fun getMicroposts(pageable: Pageable): Page<Micropost> = micropostsService!!.findAll(entity!!, pageable)

    fun getFeed(pageable: Pageable): Page<Micropost> = micropostsService!!.findFeed(entity!!, pageable)

    fun isFollowedBy(id: UUID): Boolean = service.isFollowing(id, this.id!!)

    fun getFollowing(pageable: Pageable): Page<User> = service.findFollowing(entity!!, pageable)

    fun getFollowers(pageable: Pageable): Page<User> = service.findFollowers(entity!!, pageable)

    fun follow(followed: User) = service.follow(entity!!, followed)

    fun unfollow(followed: User) = service.unfollow(entity!!, followed)

    override fun populate(): User {
        if(entity == null) entity = User()
        val user = entity!!

        user.name = name!!
        user.email = email!!

        if(canAcceptPasswordDigest()) user.passwordDigest = service.digest(password!!)

        if(activationToken.isNotBlank()) user.activationDigest = service.digest(activationToken)

        user.isActivated = isActivated
        if(activatedAt != null) user.activatedAt = activatedAt

        if(resetToken == PASSWORD_RESET_COMPLETE) {
            user.resetDigest = null
            user.resetSentAt = null

        } else if(resetToken.isNotBlank()) {
            user.resetDigest =  service.digest(resetToken)
            user.resetSentAt = Date()
        }

        return user
    }


    private fun canAcceptPasswordDigest(): Boolean =
        password != null && password!!.length >= User.PASSWORD_LENGTH_MIN && password == passwordConfirmation


    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is UserForm) return false

        if (id != other.id) return false
        if (name != other.name) return false
        if (email != other.email) return false
        if (password != other.password) return false
        if (passwordConfirmation != other.passwordConfirmation) return false
        if (isActivated != other.isActivated) return false
        if (activationToken != other.activationToken) return false
        if (resetToken != other.resetToken) return false
        if (resetSentAt != other.resetSentAt) return false
        if (activatedAt != other.activatedAt) return false

        return true
    }

    override fun hashCode(): Int {
        var result = id?.hashCode() ?: 0
        result = 31 * result + (name?.hashCode() ?: 0)
        result = 31 * result + (email?.hashCode() ?: 0)
        result = 31 * result + (password?.hashCode() ?: 0)
        result = 31 * result + (passwordConfirmation?.hashCode() ?: 0)
        result = 31 * result + isActivated.hashCode()
        result = 31 * result + activationToken.hashCode()
        result = 31 * result + resetToken.hashCode()
        result = 31 * result + (resetSentAt?.hashCode() ?: 0)
        result = 31 * result + (activatedAt?.hashCode() ?: 0)
        return result
    }

    override fun toString(): String {
        return "UserForm(id=$id, name='$name', email='$email'," +
            " password='[PROTECTED]', passwordConfirmation='[PROTECTED]'," +
            " isActivated=$isActivated, activationToken='[PROTECTED]', activatedAt=$activatedAt," +
            " resetToken='[PROTECTED]', resetSentAt=$resetSentAt)"
    }
}
