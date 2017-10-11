package com.situ.mall.controller.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.mall.pojo.Category;
import com.situ.mall.pojo.Product;
import com.situ.mall.service.front.ICategoryService;
import com.situ.mall.service.front.ISearchService;
import com.situ.mall.vo.FindByCondition;
import com.situ.mall.vo.PageBean;

@Controller
@RequestMapping("search")
public class SearchController {

	@Autowired
	private ICategoryService categoryService;
	
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
		List<Category> parentList = categoryService.fingAllCategoryParent();
		List<Category> childList = categoryService.findAllChildCategory();
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("categoryId", categoryId);
		model.addAttribute("parentList", parentList);
		model.addAttribute("childList", childList);
		//获得分类的名称
		if (null != categoryId) {
			Category category = searchService.findByCategoryId(categoryId);
			model.addAttribute("category", category.getName());
		}
		return "search";
	}
	
	@RequestMapping("findByCondition.shtml")
	private String findByCondition(FindByCondition condition, Model model) {
		
		if (condition.getPageIndex() == null) {
			condition.setPageIndex(1);
		}
		
		condition.setPageSize(1);
		PageBean<Product> pageBean = searchService.findByCondition(condition);
		model.addAttribute("pageBean", pageBean);
		List<Category> parentList = categoryService.fingAllCategoryParent();
		List<Category> childList = categoryService.findAllChildCategory();
		model.addAttribute("parentList", parentList);
		model.addAttribute("childList", childList);
		Integer categoryId = condition.getProduct().getCategoryId();
		model.addAttribute("categoryId", categoryId);
		String name = condition.getProduct().getName();
		model.addAttribute("name", name);
		//获得分类的名称
		if (null != categoryId) {
			Category category = searchService.findByCategoryId(categoryId);
			model.addAttribute("category", category.getName());
		}
		return "search";
	}
}
