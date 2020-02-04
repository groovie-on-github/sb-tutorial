package com.example.sbtutorial.domain.base

import java.util.*
import javax.persistence.MappedSuperclass
import javax.persistence.PrePersist
import javax.persistence.PreUpdate

@MappedSuperclass
abstract class BaseEntity {

    var createdAt: Date? = null

    var updatedAt: Date? = null

    @PrePersist
    fun onPrePersist() {
        createdAt = Date()
        updatedAt = createdAt
    }

    @PreUpdate
    fun onPreUpdate() {
        updatedAt = Date()
    }


    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is BaseEntity) return false

        if (createdAt != other.createdAt) return false
        if (updatedAt != other.updatedAt) return false

        return true
    }

    override fun hashCode(): Int {
        var result = createdAt?.hashCode() ?: 0
        result = 31 * result + (updatedAt?.hashCode() ?: 0)
        return result
    }

    override fun toString(): String {
        return "createdAt=$createdAt, updatedAt=$updatedAt"
    }
}
