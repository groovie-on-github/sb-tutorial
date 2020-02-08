package com.example.sbtutorial.controller

import org.apache.commons.logging.LogFactory
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.servlet.ModelAndView

@Controller
class StaticPagesController: BaseController() {

    companion object {
        private const val BASE_TITLE_KEY = "view"
        private const val TITLE_KEY_HOME = "${BASE_TITLE_KEY}.home.title"
        private const val TITLE_KEY_HELP = "${BASE_TITLE_KEY}.help.title"
        private const val TITLE_KEY_ABOUT = "${BASE_TITLE_KEY}.about.title"
        private const val TITLE_KEY_CONTACT = "${BASE_TITLE_KEY}.contact.title"

        private const val VIEW_NAME_HOME = "home"
        private const val VIEW_NAME_HELP = "help"
        private const val VIEW_NAME_ABOUT = "about"
        private const val VIEW_NAME_CONTACT = "contact"
    }

    private val log = LogFactory.getLog(StaticPagesController::class.java)

    @GetMapping("/")
    fun home(mav: ModelAndView): ModelAndView {
        log.debug("#home called!!")

        mav.viewName = VIEW_NAME_HOME
        mav.model[TITLE_KEY] = TITLE_KEY_HOME

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/help")
    fun help(mav: ModelAndView): ModelAndView {
        log.debug("#help called!!")

        mav.viewName = VIEW_NAME_HELP
        mav.model[TITLE_KEY] = TITLE_KEY_HELP

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/about")
    fun about(mav: ModelAndView): ModelAndView {
        log.debug("#about called!!")

        mav.viewName = VIEW_NAME_ABOUT
        mav.model[TITLE_KEY] = TITLE_KEY_ABOUT

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/contact")
    fun contact(mav: ModelAndView): ModelAndView {
        log.debug("#contact called!!")

        mav.viewName = VIEW_NAME_CONTACT
        mav.model[TITLE_KEY] = TITLE_KEY_CONTACT

        log.debug(">> $mav")
        return mav
    }
}
