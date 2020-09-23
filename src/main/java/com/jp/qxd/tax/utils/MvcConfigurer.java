package com.jp.qxd.tax.utils;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfigurer implements WebMvcConfigurer{

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		String[] uri = new String[] {
				"/"
				,"/error"
				,"/third/**"
				,"/css/**"
				,"/js/**"
				,"/fonts/**"
				,"/assets/**"
				,"/global_assets/**"
				,"/login"
				,"/getYear"
				,"/setYear"
				,"/verifyAccount"
				,"/register"
				,"/registerCheck"
		};
		registry.addInterceptor(new SessionTimeoutInterceptor())
		.addPathPatterns("/**")
		.excludePathPatterns(uri);
	}
}
