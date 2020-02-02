package com.example.sbtutorial.controller

import com.example.sbtutorial.domain.user.User
import com.example.sbtutorial.domain.user.UsersService
import org.apache.commons.logging.LogFactory
import org.springframework.stereotype.Controller
import org.springframework.validation.BindingResult
import org.springframework.validation.annotation.Validated
import org.springframework.web.bind.WebDataBinder
import org.springframework.web.bind.annotation.*
import org.springframework.web.servlet.ModelAndView
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import java.util.*


@Controller
@RequestMapping("/users")
class UsersController(private val us: UsersService) {

    // ロガー
    private val log = LogFactory.getLog(UsersController::class.java)


    @InitBinder("user")
    fun initBinder(binder: WebDataBinder) {
        binder.setAllowedFields("name", "email")
    }

    @ModelAttribute("user")
    fun modelUser(@PathVariable("id", required = false) id: UUID? = null): User? {
        log.debug("UsersController#modelUser($id) called!!")

        return if(id == null) User() else us.getUserById(id)
    }


    /**
     * ユーザー一覧表示
     */
    @GetMapping // GET /users
    fun index(mav: ModelAndView): ModelAndView {
        log.debug("UsersController#index called!!")

        mav.viewName = "users/index"
        mav.model["title"] = "Listing users"
        mav.model["users"] = us.getAllUsers()
        if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * ユーザー表示
     */
    @GetMapping("{id}") // GET /users/{id}
    fun show(@ModelAttribute("user") user: User,
             mav: ModelAndView): ModelAndView {
        log.debug("UsersController#show called!!")

        mav.viewName = "users/show"
        mav.model["title"] = "Show user"
        mav.model["user"] = user
        if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * ユーザー作成画面表示
     */
    @GetMapping("new") // GET /users/new
    fun new(mav: ModelAndView): ModelAndView {
        log.debug("UsersController#new called!!")

        mav.viewName = "users/new"
        mav.model["title"] = "Create user"
        mav.model["user"] = User()
        if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * ユーザー編集画面表示
     */
    @GetMapping("{id}/edit") // GET /users/{id}/edit
    fun edit(@ModelAttribute("user") user: User,
             mav: ModelAndView): ModelAndView {
        log.debug("UsersController#edit called!!")

        mav.viewName = "users/edit"
        mav.model["title"] = "Edit user"
        mav.model["user"] = user
        if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * ユーザー作成実行
     */
    @PostMapping // POST /users
    fun create(@Validated @ModelAttribute("user") user: User,
               result: BindingResult,
               redirect: RedirectAttributes,
               mav: ModelAndView): ModelAndView {
        log.debug("UsersController#create called!!")
        log.debug(">> $result")

        if(result.hasErrors()) {
            mav.viewName = "users/new"
            mav.model["title"] = "Create user"

        } else {
            us.save(user)

            redirect.addFlashAttribute("messages", listOf("${user.name} has been created!!"))
            mav.viewName = "redirect:/users"
        }

        if (log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * ユーザー更新実行
     */
    @PostMapping("{id}") // POST /users/{id}
    fun update(@Validated @ModelAttribute("user") user: User,
               result: BindingResult,
               redirect: RedirectAttributes,
               mav: ModelAndView): ModelAndView {
        log.debug("UsersController#update called!!")
        log.debug(">> $result")

        if(result.hasErrors()) {
            mav.viewName = "users/edit"
            mav.model["title"] = "Edit user"

        } else {
            us.save(user)

            redirect.addFlashAttribute("messages", listOf("${user.name} has been updated!!"))
            mav.viewName = "redirect:/users/${user.id}"
        }

        if (log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * ユーザー削除画面表示
     */
    @GetMapping("{id}/delete") // GET /users/{id}/delete
    fun delete(@ModelAttribute("user") user: User,
               mav: ModelAndView): ModelAndView {
        log.debug("UsersController#delete called!!")

        mav.viewName = "users/delete"
        mav.model["title"] = "Delete user"
        mav.model["user"] = user
        if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * ユーザー削除実行
     */
    @PostMapping("{id}/delete") // POST /users{id}/delete
    fun destroy(@ModelAttribute("user") user: User,
                redirect: RedirectAttributes,
                mav: ModelAndView): ModelAndView {
            log.debug("UsersController#destroy called!!")

            us.delete(user)

            redirect.addFlashAttribute("messages", listOf("${user.name} has been deleted!!"))
            mav.viewName = "redirect:/users"

            if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

            return mav
    }
}
