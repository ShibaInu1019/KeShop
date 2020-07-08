package com.zy.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		Object obj = request.getSession().getAttribute("member");
		if (obj == null) {
			System.out.println("SessionInterceptor");
			response.sendRedirect(request.getContextPath() + "/login/noSession.action");
			return false;
		} else {
			return true;
		}
	}

}
