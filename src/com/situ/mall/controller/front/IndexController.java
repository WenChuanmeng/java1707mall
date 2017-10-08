package com.situ.mall.controller.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.mall.pojo.Category;
import com.situ.mall.service.back.ICategoryService;

@Controller
public class IndexController {

	@Autowired
	private ICategoryService categoryService;
	
	@RequestMapping("index.shtml")
	private String index(Integer id, Model model) {
		
		List<Category> parentList = categoryService.fingAllCategoryParent();
		model.addAttribute("parentList", parentList);
		List<Category> childList = categoryService.findAllChildCategory();
		model.addAttribute("childList", childList);
		return "index";
	}
}
