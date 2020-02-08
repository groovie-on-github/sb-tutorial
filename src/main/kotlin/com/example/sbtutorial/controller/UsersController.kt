package com.example.sbtutorial.controller

import org.apache.commons.logging.LogFactory
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.servlet.ModelAndView

@Controller
class UsersController: BaseController() {

    companion object {
        private const val BASE_PATH = "/users"

        private const val BASE_TITLE_KEY = "view.users"
        private const val TITLE_KEY_NEW = "${BASE_TITLE_KEY}.new.title"

        private const val VIEW_NAME_NEW = "$BASE_PATH/new"
    }

    private val log = LogFactory.getLog(UsersController::class.java)

    @GetMapping("/signup")
    fun new(mav: ModelAndView): ModelAndView {
        log.debug("#new called!!")

        mav.viewName = VIEW_NAME_NEW
        mav.model[TITLE_KEY] = TITLE_KEY_NEW

        log.debug(">> $mav")
        return mav
    }
}
