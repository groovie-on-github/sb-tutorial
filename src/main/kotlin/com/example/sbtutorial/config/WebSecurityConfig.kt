package com.example.sbtutorial.config

import com.example.sbtutorial.auth.AccountService
import com.example.sbtutorial.auth.AuthProperties
import com.example.sbtutorial.controller.RelationshipsController as RC
import com.example.sbtutorial.controller.UsersController as UC
import com.example.sbtutorial.controller.MicropostsController as MC
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
                // ルート、静的ページへのアクセスは許可する
                .mvcMatchers("/", "/about", "/help", "/contact").permitAll()

                // 静的リソースへのアクセスは許可する
                .mvcMatchers("/favicon.ico", "/webjars/**", "/css/**", "/images/**").permitAll()

                // 認証系のアクセスは許可する
                .mvcMatchers("/login-success", "/login-error", "/logout-success").permitAll()

                // 登録ページへのアクセスは許可する
                .mvcMatchers("/signup").permitAll()

                // エラーハンドラーへのアクセスは許可する
                .mvcMatchers("/error/access-denied").permitAll()

                // ユーザーリソースに関するアクセスを制限する
                // ユーザー情報表示以外は本人のみ
                // ユーザー削除はROLE_ADMINのみ許可
                .mvcMatchers(HttpMethod.GET, "/${UC.BASE_PATH}",
                                             "/${UC.BASE_PATH}/{id}/following",
                                             "/${UC.BASE_PATH}/{id}/followers").authenticated()
                .mvcMatchers(HttpMethod.GET, "/${UC.BASE_PATH}/{id}").permitAll()
                .mvcMatchers(HttpMethod.GET, "/${UC.BASE_PATH}/{id}/edit")
                    .access("isAuthenticated() and @securityHelper.isCurrentUser(principal, #id)")
                .mvcMatchers(HttpMethod.POST, "/${UC.BASE_PATH}/{id}")
                    .access("isAuthenticated() and @securityHelper.isCurrentUser(principal, #id)")
                .mvcMatchers(HttpMethod.POST, "/${UC.BASE_PATH}/{id}/delete")
                    .access("isAuthenticated() and @securityHelper.canDeleteUser(principal)")

                // activation
                .mvcMatchers(HttpMethod.GET, "/account_activation/{token}/edit").permitAll()

                // password reset
                .mvcMatchers("/password_resets/**").permitAll()

                // マイクロポストリソースに関するアクセスを制限する
                .mvcMatchers(HttpMethod.GET, "/${MC.BASE_PATH}/picture/{id}").permitAll()
                .mvcMatchers(HttpMethod.POST, "/${MC.BASE_PATH}").authenticated()
                .mvcMatchers(HttpMethod.POST, "/${MC.BASE_PATH}/{id}/delete")
                    .access("isAuthenticated() and @securityHelper.canDeleteMicropost(principal, #id)")

                // relationshipsに関するアクセスを制限する
                .mvcMatchers(HttpMethod.POST, "/${RC.BASE_PATH}", "/${RC.BASE_PATH}/{id}/delete").authenticated()

                .apply {
                    // 上記以外は拒否
                    if(log.isDebugEnabled) anyRequest().denyAll()
                    // 上記以外は認証が必要
                    else anyRequest().authenticated()
                }

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
