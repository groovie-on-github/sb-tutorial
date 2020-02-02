package com.example.sbtutorial

import com.example.sbtutorial.domain.user.User
import com.example.sbtutorial.domain.user.UsersRepository
import org.junit.jupiter.api.BeforeEach

abstract class TestDataSupplier(private val usersRepository: UsersRepository? = null) {

    lateinit var user1: User
    lateinit var user1a: User
    lateinit var user2: User

    @BeforeEach
    fun setUp() {
        if(usersRepository != null) {
            user1 = User("test user1", "user1@example.com")
            user1a = User("test user1", "user1.alternate@example.com")
            user2 = User("test user2", "user2@example.com")

            usersRepository.saveAndFlush(user1)
            usersRepository.saveAndFlush(user1a)
            usersRepository.saveAndFlush(user2)
        }
    }
}