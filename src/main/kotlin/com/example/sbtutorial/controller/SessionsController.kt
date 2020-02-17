package com.example.sbtutorial.controller

import com.example.sbtutorial.auth.AuthProperties
import com.example.sbtutorial.helper.SessionsHelper
import org.apache.commons.logging.LogFactory
import org.springframework.stereotype.Controller
import org.springframework.util.Base64Utils
import org.springframework.web.bind.annotation.*
import org.springframework.web.servlet.ModelAndView
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import java.net.URLDecoder
import javax.servlet.http.Cookie
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

@Controller
class SessionsController(private val authProperties: AuthProperties): BaseController() {

    companion object {
        private const val BASE_PATH = "/sessions"

        private const val BASE_TITLE_KEY = "view.sessions"
        private const val TITLE_KEY_NEW = "${BASE_TITLE_KEY}.new.title"

        private const val VIEW_NAME_NEW = "${BASE_PATH}/new"
    }

    private val log = LogFactory.getLog(SessionsController::class.java)

    @GetMapping("/login")
    fun new(mav: ModelAndView): ModelAndView {
        log.debug("#new called!!")

        mav.viewName = VIEW_NAME_NEW
        mav.model[TITLE_KEY] = TITLE_KEY_NEW

        log.debug(">> $mav")
        return mav
    }

    @PostMapping("/login-success")
    fun loginSuccess(sessionsHelper: SessionsHelper,
                     request: HttpServletRequest,
                     response: HttpServletResponse,
                     mav: ModelAndView): ModelAndView {
        log.debug("#loginSuccess called!!")

        // 永続ログインしているユーザーが別ユーザーでログインしてきた場合の対処
        val cookie = request.cookies?.find { it.name == authProperties.rememberMe.cookieName }
        if(cookie != null) {
            val email = URLDecoder.decode(
                Base64Utils.decodeFromString(cookie.value)
                    .toString(Charsets.UTF_8).split(":")[0]
                , Charsets.UTF_8.toString())

            if(!sessionsHelper.isCurrentUser(email)) {
                response.addCookie(Cookie(authProperties.rememberMe.cookieName, "").apply {
                    maxAge = -1
                    isHttpOnly = true
                })
            }
        }

        mav.viewName = if(sessionsHelper.loggedIn) "redirect:${UsersController.BASE_PATH}/${sessionsHelper.currentId}"
                       else "redirect:/login"

        log.debug(">> $mav")
        return mav
    }

    @PostMapping("/login-error")
    fun loginError(redirectAttributes: RedirectAttributes,
                   mav: ModelAndView): ModelAndView {
        log.debug("#loginError called!!")

        mav.viewName = "redirect:/login"
        redirectAttributes.addFlashAttribute("flash",
            mapOf("danger" to "view.sessions.new.login-error"))

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/logout-success")
    fun logoutSuccess(redirectAttributes: RedirectAttributes,
                      mav: ModelAndView): ModelAndView {
        log.debug("#logoutSuccess called!!")

        mav.viewName = "redirect:/"
        redirectAttributes.addFlashAttribute("flash",
            mapOf("success" to "view.sessions.new.logout"))

        log.debug(">> $mav")
        return mav
    }
}
