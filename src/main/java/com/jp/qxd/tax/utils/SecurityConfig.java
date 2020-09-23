package com.jp.qxd.tax.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.logout.SimpleUrlLogoutSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.jp.qxd.tax.service.CustomUserService;

@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    private static final String KEY = "qxd.com";
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private CustomUserService customUserService;
    @Autowired
    private SavedRequestAwareAuthenticationSuccessHandler successHandler;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    @Bean
    public AuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(customUserService);
        authenticationProvider.setPasswordEncoder(passwordEncoder());
        return authenticationProvider;
    }

    @Bean
    public HttpSessionRequestCache httpSessionRequestCache() {
    	HttpSessionRequestCache httpSessionRequestCache = new HttpSessionRequestCache();
    	httpSessionRequestCache.setCreateSessionAllowed(false);
        return httpSessionRequestCache;
    }
    @Bean
    public SysRedirectStrategy sysLoginRedirectStrategy() {
    	SysRedirectStrategy sysLoginRedirectStrategy = new SysRedirectStrategy();
    	sysLoginRedirectStrategy.setAfterLoginRedirect(true);
        return sysLoginRedirectStrategy;
    }
    @Bean
    public SysRedirectStrategy sysRedirectStrategy() {
    	SysRedirectStrategy sysLoginRedirectStrategy = new SysRedirectStrategy();
        return sysLoginRedirectStrategy;
    }
    @Bean
    public SimpleUrlLogoutSuccessHandler simpleUrlLogoutSuccessHandler() {
    	SimpleUrlLogoutSuccessHandler simpleUrlLogoutSuccessHandler = new SimpleUrlLogoutSuccessHandler();
    	simpleUrlLogoutSuccessHandler.setDefaultTargetUrl("/sysAuthLogin");
    	simpleUrlLogoutSuccessHandler.setAlwaysUseDefaultTargetUrl(true);
    	simpleUrlLogoutSuccessHandler.setRedirectStrategy(sysRedirectStrategy());
    	return simpleUrlLogoutSuccessHandler;
    }
    @Bean
    public SavedRequestAwareAuthenticationSuccessHandler successHandler() {
    	SavedRequestAwareAuthenticationSuccessHandler successHandler = new SavedRequestAwareAuthenticationSuccessHandler();
    	successHandler.setDefaultTargetUrl("/authorization");
    	successHandler.setAlwaysUseDefaultTargetUrl(true);
    	successHandler.setRedirectStrategy(sysLoginRedirectStrategy());
    	return successHandler;
    }


    @Bean
    public SimpleUrlAuthenticationFailureHandler failureHandler() {
    	SimpleUrlAuthenticationFailureHandler failureHandler = new SimpleUrlAuthenticationFailureHandler();
    	failureHandler.setDefaultFailureUrl("/sysAuthLogin?login_error=true");
    	return failureHandler;
    }


    @Bean
    public UsernamePasswordAuthenticationFilter uPauthenticationFilter() throws Exception {
    	UsernamePasswordAuthenticationFilter uPauthenticationFilter = new UsernamePasswordAuthenticationFilter();
    	uPauthenticationFilter.setRequiresAuthenticationRequestMatcher(new AntPathRequestMatcher("/authentication", "POST"));
    	uPauthenticationFilter.setAuthenticationManager(this.authenticationManager());
    	uPauthenticationFilter.setAuthenticationFailureHandler(failureHandler());
    	uPauthenticationFilter.setAuthenticationSuccessHandler(successHandler());
    	return uPauthenticationFilter;
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	http.requestCache().requestCache(httpSessionRequestCache());
    	http.addFilterBefore(uPauthenticationFilter(), UsernamePasswordAuthenticationFilter.class);
    	http.csrf().ignoringAntMatchers("/authentication");
        http.authorizeRequests().antMatchers("/third","/css/**", "/js/**", "/fonts/**","/getUsers").permitAll()
		.antMatchers("/registerCheck").anonymous()
        		.antMatchers("/verifyAccount").anonymous()
                .antMatchers("/admin/**").hasRole("ADMIN")
                .antMatchers("/").authenticated()
                .antMatchers("/index").authenticated()
                .antMatchers("/pdf").authenticated()
                .antMatchers("/pdf/**").authenticated()
                .antMatchers("/input/**").authenticated()
                .antMatchers("/outputpdf/").authenticated()
                .antMatchers("/outputpdf/**").authenticated()
                .antMatchers("/summary/").authenticated()
                .and()
                .formLogin()
                .loginPage("/login").failureUrl("/login?error=true")
                .defaultSuccessUrl("/")
                .and()
                .logout().logoutUrl("/logout").invalidateHttpSession(true).deleteCookies("JSESSIONID")
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessHandler(simpleUrlLogoutSuccessHandler())
                .and().rememberMe().key(KEY)
                .and().exceptionHandling().accessDeniedPage("/403");
        http.csrf().ignoringAntMatchers("/h2-console/**");
        http.headers().frameOptions().sameOrigin();

    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider());
    }
}