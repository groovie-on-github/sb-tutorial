package com.example.sbtutorial.auth

import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UsersService
import org.apache.commons.logging.LogFactory
import org.springframework.beans.factory.annotation.Value
import org.springframework.jdbc.core.JdbcTemplate
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.AuthorityUtils
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.core.userdetails.UsernameNotFoundException
import org.springframework.security.crypto.password.PasswordEncoder
import org.springframework.stereotype.Service

@Service
class AccountService(private val us: UsersService, private val jt: JdbcTemplate,
                     private val passwordEncoder: PasswordEncoder): UserDetailsService {

    private val log = LogFactory.getLog(AccountService::class.java)

    @Value("\${spring.datasource.platform}")
    private lateinit var platform: String

    private val insertAdminTemplate = """
        INSERT INTO "user"(id, name, email, password_digest, is_admin, is_activated, activated_at, created_at, updated_at)
          SELECT %s, ?, ?, ?, true, true, CURRENT_TIMESTAMP AS aat, CURRENT_TIMESTAMP AS cat, CURRENT_TIMESTAMP AS uat
    """.trimIndent()


    override fun loadUserByUsername(username: String?): UserDetails {
        if(username == null || username.isBlank()) throw UsernameNotFoundException("Username cannot be blank")

        val user = us.findByEmail(username.toLowerCase()) ?: throw UsernameNotFoundException("User($username) not found")

        return Account(user, getAuthorities(user))
    }

    fun registerAdmin(admin: AuthProperties.Admin) {
        log.debug("#registerAdmin called!!")

        if(!admin.isValid()) throw IllegalArgumentException("invalid admin properties($admin)")

        if(us.findByEmail(admin.email.toLowerCase()) == null) {
            val funcUuidGen = if(platform == "postgres") "uuid_generate_v1()" else "RANDOM_UUID()"
            val insertAdminSql = insertAdminTemplate.format(funcUuidGen)
            val passwordDigest = passwordEncoder.encode(admin.password)

            jt.update(insertAdminSql, admin.name, admin.email, passwordDigest)
            log.debug(">> registered $admin as admin")

        } else {
            log.debug(">> user(${admin.email}) already exists")
        }
    }

    private fun getAuthorities(user: User): List<GrantedAuthority> =
        if(user.isAdmin) AuthorityUtils.createAuthorityList("ROLE_ADMIN", "ROLE_USER")
        else  AuthorityUtils.createAuthorityList("ROLE_USER")
}
