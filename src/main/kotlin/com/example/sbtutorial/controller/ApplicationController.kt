package com.example.sbtutorial.controller

import org.apache.commons.logging.Log
import org.apache.commons.logging.LogFactory
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.ResponseBody

@Controller // コントローラーを宣言するアノテーション
@RequestMapping("/") // コントローラーが処理する起点となるパス
class ApplicationController {

    // ロガー
    private val log: Log = LogFactory.getLog(ApplicationController::class.java)

    @GetMapping // 起点に対してのGetリクエストを処理する
    @ResponseBody // 直接、値を返却する為のアノテーション(Viewを使用しないという意味)
    fun hello(): String {
        log.debug("hello() called!!")
        return "hello, world!"
    }

    @GetMapping("found")// 起点からの相対パス("/" + "found" = "/found")に対してのGetリクエストを処理する
    @ResponseBody
    fun found(): String {
        log.debug("見つかっちゃった！")
        return "<b>found</b>"
    }

    @GetMapping("found/nest")// 起点からの相対パス("/" + "found/nest" = "/found/nest")に対してのGetリクエストを処理する
    @ResponseBody
    fun foundNest(): String {
        log.fatal("見つかっちゃ駄目！！")
        throw IllegalAccessException("'/found/nest'はアクセスできないはず！！")
    }
}
