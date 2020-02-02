package com.example.sbtutorial.domain.base

import java.util.*
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id

@Entity
class BaseEntityImpl(var name: String): BaseEntity() {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    lateinit var id: UUID
}
