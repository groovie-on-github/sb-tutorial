package com.example.sbtutorial.config

import org.springframework.context.annotation.Configuration
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter

@Configuration // 設定を行うクラスであることを宣言するアノテーション
@EnableWebSecurity // Spring Securityを有効にする為のアノテーション
class WebSecurityConfig: WebSecurityConfigurerAdapter() {

    override fun configure(http: HttpSecurity) {
        http
            // 認証が必要なリクエストを設定する
            // 順番は大事！！
            .authorizeRequests()
                // ルート直下のアクセスは許可する
                .mvcMatchers("/*").permitAll()
                // ドメインリソースへのアクセスは許可する
                .mvcMatchers("/users/**").permitAll()
                // 静的リソースへのアクセスは許可する
                .mvcMatchers("/webjars/**", "/css/**", "/images/**").permitAll()

                // 上記以外は拒否
                .anyRequest().denyAll()
    }
}
