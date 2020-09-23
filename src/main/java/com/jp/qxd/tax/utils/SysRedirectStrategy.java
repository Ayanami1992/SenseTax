package com.jp.qxd.tax.utils;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.RedirectStrategy;

import com.jp.qxd.tax.model.User;

public class SysRedirectStrategy implements RedirectStrategy{

	protected final Log logger = LogFactory.getLog(this.getClass());

	private boolean isAfterLoginRedirect = false;

	public boolean isAfterLoginRedirect() {
		return isAfterLoginRedirect;
	}

	public void setAfterLoginRedirect(boolean isAfterLoginRedirect) {
		this.isAfterLoginRedirect = isAfterLoginRedirect;
	}

	public void sendRedirect(HttpServletRequest request, HttpServletResponse response, String url) throws IOException {

		StringBuilder redirectUrl = new StringBuilder();
		String scheme = request.getScheme().toLowerCase();
		String headerName = "Protocol";

		logger.info(headerName + ":" + request.getHeader(headerName));

		if (request.getHeader(headerName) != null && request.getHeader(headerName).toLowerCase().equals("https")) {
			scheme = "https";
		}
		int serverPort = request.getServerPort();
		redirectUrl.append(scheme).append("://").append(request.getServerName()).append(":").append(serverPort);

		logger.info("serverPort:" + serverPort);
		redirectUrl.append(request.getContextPath()).append(url);
		logger.info("redirect to :" + redirectUrl.toString());

		response.sendRedirect(redirectUrl.toString());
		if (this.isAfterLoginRedirect) {
			SecurityContext sc = SecurityContextHolder.getContext();

			if (sc == null || sc.getAuthentication() == null || sc.getAuthentication().isAuthenticated() == false) {
				logger.info("sc is null");
			} else if (!(sc.getAuthentication().getPrincipal() instanceof User)) {
				logger.info("sc.getAuthentication().getPrincipal() is not instanceof User");
			} else {
				HttpSession session = request.getSession(true);

				User user = (User) session.getAttribute(Contents.USER_INFO);
				if (user == null) {
					user = (User) sc.getAuthentication().getPrincipal();
					session.setAttribute(Contents.USER_INFO, user);
				}
				try {
					Thread.sleep(300);
				} catch (Exception e) {
				}
			}
		}
//		logger.info("sessionid:" + request.getSession().getId());
	}
}
