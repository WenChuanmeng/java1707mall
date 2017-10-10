package com.situ.mall.controller.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.mall.pojo.Product;
import com.situ.mall.service.front.ISearchService;
import com.situ.mall.vo.FindByCondition;
import com.situ.mall.vo.PageBean;

@Controller
@RequestMapping("search")
public class SearchController {

	@Autowired
	private ISearchService searchService;
	
	@RequestMapping("search.shtml")
	private String search(String name, Integer categoryId,Integer pageIndex, Integer pageSize, Model model) {
		System.out.println(name);
		if (pageIndex == null) {
			pageIndex = 1;
		}
		pageSize = 1;
		PageBean<Product> pageBean = searchService.findByCategory(categoryId, pageIndex, pageSize);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("name", name);
		model.addAttribute("categoryId", categoryId);
		return "search";
	}
	
	@RequestMapping("findByCondition")
	private String findByCondition(FindByCondition condition, Model model) {
		
		
		return "";
	}
}
