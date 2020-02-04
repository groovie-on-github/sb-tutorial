package com.example.sbtutorial.controller

import com.example.sbtutorial.domain.micropost.Micropost
import com.example.sbtutorial.domain.micropost.MicropostsService
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
class MicropostsController(private val ms: MicropostsService) {

    // ロガー
    private val log = LogFactory.getLog(MicropostsController::class.java)


    @InitBinder("micropost")
    fun initBinder(binder: WebDataBinder) {
        binder.setAllowedFields("content", "userId")
    }

    @ModelAttribute("micropost")
    fun modelMicropost(@PathVariable("id", required = false) id: UUID? = null): Micropost? {
        log.debug("MicropostsController#modelMicropost($id) called!!")

        return if(id == null) Micropost() else ms.getMicropostById(id)
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
               redirect: RedirectAttributes,
               mav: ModelAndView): ModelAndView {
        log.debug("MicropostsController#create called!!")
        log.debug(">> $result")

        if(result.hasErrors()) {
            mav.viewName = "microposts/new"
            mav.model["title"] = "Create micropost"

        } else {
            ms.save(micropost)

            redirect.addFlashAttribute("messages",
                    listOf("micropost has been created by ${micropost.userId}!!"))
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
               redirect: RedirectAttributes,
               mav: ModelAndView): ModelAndView {
        log.debug("MicropostsController#update called!!")
        log.debug(">> $result")

        if(result.hasErrors()) {
            mav.viewName = "microposts/edit"
            mav.model["title"] = "Edit micropost"

        } else {
            ms.save(micropost)

            redirect.addFlashAttribute("messages",
                    listOf("micropost has been updated by ${micropost.userId}!!"))
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

            ms.delete(micropost)

            redirect.addFlashAttribute("messages",
                    listOf("micropost has been deleted by ${micropost.userId}!!"))
            mav.viewName = "redirect:/microposts"

            if(log.isDebugEnabled) mav.model.forEach { (k, v) -> log.debug(">> $k -> $v") }

            return mav
    }
}
