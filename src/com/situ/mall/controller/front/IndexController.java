package com.situ.mall.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	
	@RequestMapping("index.shtml")
	private String index(Integer id, Model model) {
		
		return "index";
	}
}
