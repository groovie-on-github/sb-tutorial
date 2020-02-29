package com.example.sbtutorial.helper

import com.example.sbtutorial.auth.Account
import com.example.sbtutorial.model.micropost.MicropostsService
import org.apache.commons.logging.LogFactory
import org.springframework.stereotype.Service
import java.util.*

@Service
class SecurityHelper(private val ms: MicropostsService) {

    private val log = LogFactory.getLog(SecurityHelper::class.java)

    fun isCurrentUser(account:Account, idStr: String): Boolean =
        try { account.id == UUID.fromString(idStr) }
        catch(e: Exception) { log.warn("#isCurrentUser($account, $idStr)", e); false }

    fun canDeleteUser(account:Account): Boolean = account.isAdmin

    fun canDeleteMicropost(account:Account, idStr: String): Boolean =
        try { account.id == ms.findById(UUID.fromString(idStr))?.user?.id }
        catch(e: Exception) { log.warn("#canDeleteMicropost($account, $idStr)", e); false }
}
