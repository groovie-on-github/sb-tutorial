package com.example.sbtutorial.domain.base

import java.util.*
import javax.persistence.MappedSuperclass
import javax.persistence.PrePersist
import javax.persistence.PreUpdate

@MappedSuperclass
abstract class BaseEntity {

    lateinit var createdAt: Date

    lateinit var updatedAt: Date

    @PrePersist
    fun onPrePersist() {
        createdAt = Date()
        updatedAt = createdAt
    }

    @PreUpdate
    fun onPreUpdate() {
        updatedAt = Date()
    }
}
