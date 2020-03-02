package com.example.sbtutorial.controller

import com.example.sbtutorial.helper.SessionsHelper
import com.example.sbtutorial.model.micropost.MicropostsService
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import org.apache.commons.logging.LogFactory
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.servlet.ModelAndView
import java.util.*

@Controller
class RelationshipsController(private val us: UsersService, private val ms: MicropostsService): BaseController() {

    companion object {
        const val BASE_PATH = "relationships"
    }

    private val log = LogFactory.getLog(RelationshipsController::class.java)

    @PostMapping("/$BASE_PATH")
    fun create(@RequestParam("followedId") followed: User,
               sessionsHelper: SessionsHelper,
               mav: ModelAndView): ModelAndView {
        log.debug("#create called!!")

        val currentUser = UserForm.from(sessionsHelper.currentId!!, us, ms)
        currentUser.follow(followed)

        mav.viewName = "redirect:/${UsersController.BASE_PATH}/${followed.id}"

        log.debug(">> $mav")
        return mav
    }

    @PostMapping("/$BASE_PATH/{id}/delete")
    fun destroy(@PathVariable("id") followed: User,
                sessionsHelper: SessionsHelper,
                mav: ModelAndView): ModelAndView {
        log.debug("#destroy called!!")

        val currentUser = UserForm.from(sessionsHelper.currentId!!, us, ms)
        currentUser.unfollow(followed)

        mav.viewName = "redirect:/${UsersController.BASE_PATH}/${followed.id}"

        log.debug(">> $mav")
        return mav
    }
}