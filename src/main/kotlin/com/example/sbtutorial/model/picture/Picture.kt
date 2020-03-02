package com.example.sbtutorial.model.picture

import com.example.sbtutorial.model.BaseEntity
import org.springframework.security.core.token.Sha512DigestUtils
import javax.persistence.Basic
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.FetchType
import javax.validation.constraints.NotNull

@Entity
class Picture(content: ByteArray): BaseEntity() {

    companion object {
        const val CONTENT_SIZE_MAX = 5 * 1024 * 1024
        const val WIDTH_MAX = 400.0
        const val HEIGHT_MAX = 400.0
    }

    @NotNull
    @Basic(fetch = FetchType.LAZY)
    @Column(nullable = false, unique = true, length = 64, updatable = false)
    val hash: ByteArray = Sha512DigestUtils.sha(content)

    @NotNull
    @Basic(fetch = FetchType.LAZY)
    @Column(nullable = false, length = CONTENT_SIZE_MAX, updatable = false)
    val content: ByteArray = content
}
