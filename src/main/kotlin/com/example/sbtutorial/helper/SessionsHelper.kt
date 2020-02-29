package com.example.sbtutorial.helper

import com.example.sbtutorial.auth.Account
import org.apache.commons.logging.LogFactory
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.stereotype.Service
import org.springframework.web.context.annotation.SessionScope

@Service
@SessionScope
class SessionsHelper {

    private val log = LogFactory.getLog(SessionsHelper::class.java)

    private var currentUser: Account? = null
        get() = currentUser(field)

    val currentId
        get() = currentUser?.id

    val loggedIn
        get() = currentUser != null

    val isAdmin
        get() = currentUser?.isAdmin ?: false

    fun isCurrentUser(email: String): Boolean  = currentUser?.username == email

    private fun currentUser(current: Account?): Account? {
        val ctx = SecurityContextHolder.getContext()
//        log.debug(">> authentication => ${ctx.authentication}")
//        log.debug(">> principal => ${ctx.authentication.principal}")

        val account = when (val principal = ctx.authentication?.principal) {
            is Account -> principal
            else -> null
        }

        return if(account == current) current else account.also { currentUser = it }
    }
}
