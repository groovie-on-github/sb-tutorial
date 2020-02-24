package com.example.sbtutorial.model

import org.springframework.transaction.annotation.Transactional

interface IService<E: BaseEntity> {

    @Transactional
    fun save(entity: E): E

    @Transactional
    fun delete(entity: E)
}