package com.situ.mall.controller.front;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.mall.pojo.User;

@Controller
@RequestMapping("/loginOut")
public class LoginOutController {

	@RequestMapping("/loginOut.shtml")
	private String loginOut(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("user");
		System.out.println(user);
		if (null != user) {
			session.removeAttribute("user");
			return "redirect:/index.shtml";
		}
		return "redirect:/index.shtml";
	}
}
