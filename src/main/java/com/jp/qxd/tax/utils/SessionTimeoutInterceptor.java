package com.jp.qxd.tax.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionTimeoutInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {


		HttpSession session = request.getSession(false);


		StringBuilder redirectUrl = new StringBuilder();
		redirectUrl.append("http://").append(request.getServerName())
				.append(":").append(request.getServerPort())
				.append(request.getContextPath());
		if (session == null) {
			response.sendRedirect(redirectUrl.append("/login").toString());
			return false;
		}

		String userId = Utils.getUserId(session);
		if (userId == null) {
			response.sendRedirect(redirectUrl.append("/login").toString());
			return false;
		}

		String requestType = request.getHeader("X-Requested-With");
		if (!StringUtils.isEmpty(requestType) && requestType.equalsIgnoreCase("XMLHttpRequest")) {
			return super.preHandle(request, response, handler);
		}

		String year = (String) session.getAttribute(Contents.YEAR);
		if (StringUtils.isEmpty(year)) {
			response.sendRedirect(redirectUrl.toString());
			return false;
		}


		return super.preHandle(request, response, handler);
	}
}
