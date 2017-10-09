package com.situ.mall.controller.front;

import java.nio.channels.SeekableByteChannel;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.mall.pojo.User;
import com.situ.mall.service.front.IRegisterService;

@Controller
@RequestMapping("register")
public class RegisterController {
	
	@Autowired
	private IRegisterService registerService;

	@RequestMapping("register.shtml")
	private String register() {
		
		return "register";
	}
	
	@RequestMapping("checkUsername.shtml")
	@ResponseBody
	private Map<String, Object> checkUsername(String username) {
		System.out.println(username);
		boolean result = registerService.checkUsername(username);
		Map<String, Object> map = new HashMap<String, Object>();
		
		if (result) {
			map.put("isExist", true);
		} else {
			map.put("isExist", false);
		}
		return map;
	}
	
	@RequestMapping("registerUser.shtml")
	private String registerUser(User user, HttpServletRequest request) {
		
		user.setRole(0);
		boolean result = registerService.registerUser(user);
		
		if (result) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			return "redirect:/index.shtml";
		}
		return "redirect:register.shtml";
	}
}
