package com.example.sbtutorial.model.user

import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Modifying
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.query.Param
import org.springframework.stereotype.Repository
import org.springframework.transaction.annotation.Transactional
import java.util.*

@Repository
interface UsersRepository: JpaRepository<User, UUID> {

    fun findAllByIsActivated(isActivated: Boolean, pageable: Pageable): Page<User>

    fun findByIdAndIsActivated(id: UUID, isActivated: Boolean): User?

    fun findByEmail(email: String): User?

    @Query("select size(u.following) from User u where u.id = :id")
    fun countFollowingById(@Param("id") id: UUID): Long

    @Query("select size(u.followers) from User u where u.id = :id")
    fun countFollowersById(@Param("id") id: UUID): Long

    fun countByIdAndFollowingId(id:UUID, followingId: UUID): Long

    @Modifying
    @Transactional
    @Query("INSERT INTO user_relationships(follower_id, followed_id) VALUES(:followerId, :followedId)", nativeQuery = true)
    fun insertUserRelationShips(@Param("followerId") followerId: UUID, @Param("followedId") followedId: UUID): Int

    @Modifying
    @Transactional
    @Query("DELETE FROM user_relationships WHERE follower_id = :followerId AND followed_id = :followedId", nativeQuery = true)
    fun deleteUserRelationShips(@Param("followerId") followerId: UUID, @Param("followedId") followedId: UUID): Int

    /*@Query("select u.following from User u where u.id = :id order by u.createdAt",
           countQuery = "select cast(u.following.size java.lang.Long) from User u where u.id = :id")*/
    @Query("SELECT * FROM \"user\" u JOIN user_relationships r ON u.id = r.followed_id WHERE r.follower_id = :id ORDER BY u.created_at",
           countQuery = "SELECT COUNT(follower_id) FROM user_relationships WHERE follower_id = :id",
           nativeQuery = true)
    fun findFollowingById(@Param("id") id: UUID, pageable: Pageable): Page<User>


    @Query("SELECT * FROM \"user\" u JOIN user_relationships r ON u.id = r.follower_id WHERE r.followed_id = :id ORDER BY u.created_at",
           countQuery = "SELECT COUNT(followed_id) FROM user_relationships WHERE followed_id = :id",
           nativeQuery = true)
    fun findFollowersById(@Param("id") id: UUID, pageable: Pageable): Page<User>
}
