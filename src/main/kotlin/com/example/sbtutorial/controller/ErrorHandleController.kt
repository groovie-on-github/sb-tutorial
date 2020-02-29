package com.example.sbtutorial.controller

import com.example.sbtutorial.helper.SessionsHelper
import org.apache.commons.logging.LogFactory
import org.springframework.boot.web.servlet.error.ErrorController
import org.springframework.security.web.WebAttributes
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.servlet.ModelAndView
import javax.servlet.http.HttpServletRequest

@Controller
@RequestMapping("/error")
class ErrorHandleController: ErrorController, BaseController() {

    private val log = LogFactory.getLog(ErrorHandleController::class.java)

    override fun getErrorPath() = "/error"

    @RequestMapping("access-denied")
    fun accessDenied(request: HttpServletRequest,
                     sessionsHelper: SessionsHelper,
                     mav: ModelAndView): ModelAndView {
        log.debug("#accessDenied called!!")
        log.debug(">> ACCESS_DENIED_403 => ${request.getAttribute(WebAttributes.ACCESS_DENIED_403)}")
        log.debug(">> AUTHENTICATION_EXCEPTION => ${request.session.getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION)}")
        log.debug(">> referer => ${request.getHeader("referer")}")

        mav.viewName = if(sessionsHelper.loggedIn) "redirect:/" else "redirect:/login"

        return mav
    }
}
