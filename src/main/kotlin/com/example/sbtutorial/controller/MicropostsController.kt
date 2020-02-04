package com.example.sbtutorial.controller

import com.example.sbtutorial.domain.micropost.Micropost
import com.example.sbtutorial.domain.micropost.MicropostsService
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
@RequestMapping("/microposts")
class MicropostsController(private val ms: MicropostsService,
                           private val us: UsersService) {

    // ロガー
    private val log = LogFactory.getLog(MicropostsController::class.java)


    @InitBinder("micropost")
    fun initMicropostBinder(binder: WebDataBinder) {
//        log.debug("MicropostsController#initMicropostBinder called!!")
        binder.setAllowedFields("content")
    }

    @ModelAttribute("micropost")
    fun modelMicropost(@PathVariable("id", required = false) id: UUID? = null): Micropost? {
        log.debug("MicropostsController#modelMicropost($id) called!!")
//        val m = if(id == null) Micropost(user = User()) else ms.getMicropostById(id);log.debug(m);return m
        return if(id == null) Micropost(user = User()) else ms.getMicropostById(id)
    }

    @InitBinder("user")
    fun initUserBinder(binder: WebDataBinder) {
//        log.debug("MicropostsController#initUserBinder called!!")
        binder.setDisallowedFields("*")
    }

    @ModelAttribute("user")
    fun modelUser(@RequestParam("user.id", required = false) id: UUID? = null): User? {
        log.debug("MicropostsController#modelUser($id) called!!")
//        val u = if(id == null) null else us.getUserById(id);log.debug(u);return u
        return if(id == null) null else us.getUserById(id)
    }

    /**
     * マイクロポスト一覧表示
     */
    @GetMapping // GET /microposts
    fun index(mav: ModelAndView): ModelAndView {
        log.debug("MicropostsController#index called!!")

        mav.viewName = "microposts/index"
        mav.model["title"] = "Listing microposts"
        mav.model["microposts"] = ms.getAllMicroposts()
        if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * マイクロポスト表示
     */
    @GetMapping("{id}") // GET /microposts/{id}
    fun show(@ModelAttribute("micropost") micropost: Micropost,
             mav: ModelAndView): ModelAndView {
        log.debug("MicropostsController#show called!!")

        mav.viewName = "microposts/show"
        mav.model["title"] = "Show micropost"
        mav.model["micropost"] = micropost
        if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * マイクロポスト作成画面表示
     */
    @GetMapping("new") // GET /microposts/new
    fun new(mav: ModelAndView): ModelAndView {
        log.debug("MicropostsController#new called!!")

        mav.viewName = "microposts/new"
        mav.model["title"] = "Create micropost"
        mav.model["micropost"] = Micropost()
        if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * マイクロポスト編集画面表示
     */
    @GetMapping("{id}/edit") // GET /microposts/{id}/edit
    fun edit(@ModelAttribute("micropost") micropost: Micropost,
            mav: ModelAndView): ModelAndView {
        log.debug("MicropostsController#edit called!!")

        mav.viewName = "microposts/edit"
        mav.model["title"] = "Edit micropost"
        mav.model["micropost"] = micropost
        if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * マイクロポスト作成実行
     */
    @PostMapping // POST /microposts
    fun create(@Validated @ModelAttribute("micropost") micropost: Micropost,
               result: BindingResult,
               @ModelAttribute("user") user: User,
               redirect: RedirectAttributes,
               mav: ModelAndView): ModelAndView {
        log.debug("MicropostsController#create called!!")
        log.debug(">> $result")
        log.debug(">> $micropost")
        log.debug(">> $user")

        micropost.user = user

        if(result.hasErrors()) {
            mav.viewName = "microposts/new"
            mav.model["title"] = "Create micropost"

        } else {
            ms.save(micropost)

            redirect.addFlashAttribute("messages",
                    listOf("micropost has been created by ${micropost.user?.name}!!"))
            mav.viewName = "redirect:/microposts"
        }

        if (log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * マイクロポスト更新実行
     */
    @PostMapping("{id}") // POST /microposts/{id}
    fun update(@Validated @ModelAttribute("micropost") micropost: Micropost,
               result: BindingResult,
               @ModelAttribute("user") user: User,
               redirect: RedirectAttributes,
               mav: ModelAndView): ModelAndView {
        log.debug("MicropostsController#update called!!")
        log.debug(">> $result")
        log.debug(">> $micropost")
        log.debug(">> $user")

        if(result.hasErrors()) {
            mav.viewName = "microposts/edit"
            mav.model["title"] = "Edit micropost"

        } else {
            ms.save(micropost)

            redirect.addFlashAttribute("messages",
                    listOf("micropost has been updated by ${micropost.user?.name}!!"))
            mav.viewName = "redirect:/microposts/${micropost.id}"
        }

        if (log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * マイクロポスト削除画面表示
     */
    @GetMapping("{id}/delete") // GET /microposts/{id}/delete
    fun delete(@ModelAttribute("micropost") micropost: Micropost,
               mav: ModelAndView): ModelAndView {
        log.debug("MicropostsController#delete called!!")
        log.debug(">> $micropost")

        mav.viewName = "microposts/delete"
        mav.model["title"] = "Delete micropost"
        mav.model["micropost"] = micropost
        if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }

    /**
     * マイクロポスト削除実行
     */
    @PostMapping("{id}/delete") // POST /microposts{id}/delete
    fun destroy(@ModelAttribute("micropost") micropost: Micropost,
                redirect: RedirectAttributes,
                mav: ModelAndView): ModelAndView {
        log.debug("MicropostsController#destroy called!!")
        log.debug(">> $micropost")

        ms.delete(micropost)

        redirect.addFlashAttribute("messages",
                listOf("micropost has been deleted by ${micropost.user?.name}!!"))
        mav.viewName = "redirect:/microposts"

        if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

        return mav
    }
}
