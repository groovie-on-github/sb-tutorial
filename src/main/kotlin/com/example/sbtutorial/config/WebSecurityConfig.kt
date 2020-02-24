package com.example.sbtutorial.config

import com.example.sbtutorial.auth.AccountService
import com.example.sbtutorial.auth.AuthProperties
import org.apache.commons.logging.LogFactory
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.http.HttpMethod
import org.springframework.security.authentication.AuthenticationManager
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter
import org.springframework.security.crypto.password.PasswordEncoder
import java.time.Duration

@Configuration // 設定を行うクラスであることを宣言するアノテーション
@EnableWebSecurity // Spring Securityを有効にする為のアノテーション
class WebSecurityConfig(private val authProperties: AuthProperties,
                        private val accountService: AccountService,
                        private val passwordEncoder: PasswordEncoder): WebSecurityConfigurerAdapter() {

    private val log = LogFactory.getLog(WebSecurityConfig::class.java)

    override fun configure(http: HttpSecurity) {
        log.debug("#configure(HttpSecurity) called!!")
        log.debug(">> $authProperties")
        val rememberMe = authProperties.rememberMe

        http
            // 認証が必要なリクエストを設定する
            // 順番は大事！！
            .authorizeRequests()
                // ユーザーリソースに関するアクセスを制限する
                // ユーザー情報表示以外は本人のみ
                // ユーザー削除はROLE_ADMINのみ許可
                .mvcMatchers(HttpMethod.GET, "/users").authenticated()
                .mvcMatchers(HttpMethod.GET, "/users/{id}").permitAll()
                .mvcMatchers(HttpMethod.GET, "/users/{id}/*").access("isAuthenticated() and principal.id.toString() == #id")
                .mvcMatchers(HttpMethod.POST, "/users/{id}").access("isAuthenticated() and principal.id.toString() == #id")
                .mvcMatchers(HttpMethod.POST, "/users/{id}/delete").access("isAuthenticated() and hasRole('ADMIN')")

                // activation
                .mvcMatchers(HttpMethod.GET, "/account_activation/{token}/edit").permitAll()

                // password reset
                .mvcMatchers("/password_resets/**").permitAll()

                // ルート直下のアクセスは許可する
                .mvcMatchers("/*").permitAll()

                // 静的リソースへのアクセスは許可する
                .mvcMatchers("/webjars/**", "/css/**", "/images/**").permitAll()

                // 上記以外は認証が必要
                .anyRequest().authenticated()

            .and()

            .formLogin()
                .loginPage("/login")
                .usernameParameter("email")
                .successForwardUrl("/login-success")
                .failureForwardUrl("/login-error")
                .permitAll()

            .and()

            .rememberMe()
                .useSecureCookie(rememberMe.useSecure)
                .tokenValiditySeconds(Duration.ofDays(rememberMe.tokenValidityDays).seconds.toInt())
                .rememberMeCookieName(rememberMe.cookieName)
                .key(rememberMe.key)

            .and()

            .logout()
                .logoutSuccessUrl("/logout-success")
                .permitAll()

            .and()

            .exceptionHandling()
                .accessDeniedPage("/error/access-denied")
    }

    override fun configure(auth: AuthenticationManagerBuilder) {
        log.debug("#configure(AuthenticationManagerBuilder) called!!")
        auth.userDetailsService(accountService).passwordEncoder(passwordEncoder)

        val admin = authProperties.admin
        log.debug(">> $admin")
        accountService.registerAdmin(admin)
    }

    @Bean
    override fun authenticationManagerBean(): AuthenticationManager {
        return super.authenticationManagerBean()
    }
}
