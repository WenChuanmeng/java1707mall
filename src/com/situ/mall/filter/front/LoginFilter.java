package com.situ.mall.filter.front;

import java.io.IOException;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.situ.mall.pojo.User;

public class LoginFilter implements Filter {

    public LoginFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		
		String requestURI = req.getRequestURI();
		if (requestURI != null && requestURI.startsWith("/Java1707Mall/order/")) {
			HttpSession session = req.getSession(false);
			if (null != session) {
				User user = (User) session.getAttribute("user");
				if (null != user) {
					chain.doFilter(request, response);
					return;
				} else {
					resp.sendRedirect(req.getContextPath() + "/login/login.shtml");
					return;
				}
			} else {
				resp.sendRedirect(req.getContextPath() + "/login/login.shtml");
				return;
			}
		}
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
