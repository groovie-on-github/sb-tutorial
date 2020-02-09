package com.example.sbtutorial.model

import java.util.*
import javax.persistence.*

@MappedSuperclass
class BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    var id: UUID? = null

    var createdAt: Date? = null

    var updatedAt: Date? = null


    @PrePersist
    private fun onPrePersist() {
        createdAt = Date()
        updatedAt = createdAt
    }

    @PreUpdate
    private fun onPreUpdate() {
        updatedAt = Date()
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is BaseEntity) return false

        if (id != other.id) return false
        if (createdAt != other.createdAt) return false
        if (updatedAt != other.updatedAt) return false

        return true
    }

    override fun hashCode(): Int {
        var result = id?.hashCode() ?: 0
        result = 31 * result + (createdAt?.hashCode() ?: 0)
        result = 31 * result + (updatedAt?.hashCode() ?: 0)
        return result
    }

    override fun toString(): String {
        return "%s(id=$id, %s, createdAt=$createdAt, updatedAt=$updatedAt)"
    }
}
