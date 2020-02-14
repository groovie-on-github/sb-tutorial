package com.example.sbtutorial.auth

import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UsersService
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.AuthorityUtils
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.core.userdetails.UsernameNotFoundException
import org.springframework.stereotype.Service

@Service
class AccountService(private val us: UsersService): UserDetailsService {

    override fun loadUserByUsername(username: String?): UserDetails {
        if(username == null || username.isBlank()) throw UsernameNotFoundException("Username cannot be blank")

        val user = us.findByEmail(username.toLowerCase()) ?: throw UsernameNotFoundException("User($username) not found")

        return Account(user, getAuthorities(user))
    }

    private fun getAuthorities(user: User): List<GrantedAuthority> {
        return AuthorityUtils.createAuthorityList("ROLE_USER")
    }
}
