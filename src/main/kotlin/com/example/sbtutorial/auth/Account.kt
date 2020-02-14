package com.example.sbtutorial.auth

import com.example.sbtutorial.model.user.User
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.userdetails.UserDetails

class Account(private val user: User,
              private val authorities: List<GrantedAuthority>): UserDetails {

    val id
        get() = user.id

    override fun getUsername() = user.email

    override fun getPassword() = user.passwordDigest

    override fun getAuthorities() = authorities

    override fun isEnabled() = true

    override fun isCredentialsNonExpired() = true

    override fun isAccountNonExpired() = true

    override fun isAccountNonLocked() = true

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is Account) return false

        return user == other.user
    }

    override fun hashCode(): Int {
        var result = user.hashCode()
        result = 31 * result + authorities.hashCode()
        return result
    }

    override fun toString(): String {
        return "Account(user=$user, authorities=$authorities)"
    }
}
