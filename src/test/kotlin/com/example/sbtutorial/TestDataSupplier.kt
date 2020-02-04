package com.example.sbtutorial

import com.example.sbtutorial.domain.micropost.Micropost
import com.example.sbtutorial.domain.micropost.MicropostsRepository
import com.example.sbtutorial.domain.user.User
import com.example.sbtutorial.domain.user.UsersRepository
import org.junit.jupiter.api.BeforeEach

abstract class TestDataSupplier(private val usersRepository: UsersRepository? = null,
                                private val micropostsRepository: MicropostsRepository? = null) {

    lateinit var user1: User
    lateinit var user1a: User
    lateinit var user2: User

    lateinit var micropost11: Micropost
    lateinit var micropost12: Micropost
    lateinit var micropost21: Micropost

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

        if(micropostsRepository != null) {
            micropost11 = Micropost("test micropost1-1", user1.id)
            micropost12 = Micropost("test micropost1-2", user1.id)
            micropost21 = Micropost("test micropost2-1", user2.id)

            micropostsRepository.saveAndFlush(micropost11)
            micropostsRepository.saveAndFlush(micropost12)
            micropostsRepository.saveAndFlush(micropost21)
        }
    }
}