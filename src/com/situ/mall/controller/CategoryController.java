package com.situ.mall.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.mall.pojo.Category;
import com.situ.mall.service.ICategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	private ICategoryService categoryService;
	
	//查询所有的分类的父类
	@RequestMapping("/categoryParent")
	@ResponseBody
	private List<Category> categoryParent() {
		
		List<Category> cplist = categoryService.fingAllCategoryParent();
		for (Category category : cplist) {
			System.out.println(category);
		}
		return cplist;
	}
	
	//查找左右的子类
	@RequestMapping("/category")
	@ResponseBody
	private List<Category> category(Integer parentId) {
		
		List<Category> clist = categoryService.findAllCategory(parentId);
		return clist;
		
	}
	
	//添加分类
	
	
}
