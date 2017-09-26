package com.situ.mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.mall.pojo.Product;
import com.situ.mall.service.IProductService;
import com.situ.mall.vo.FindByCondition;
import com.situ.mall.vo.PageBean;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private IProductService productService;
	
	//实现分页
	@RequestMapping("/pageList")
	private String pageList(Integer pageIndex, Integer pageSize, Model model) {
		System.out.println("ProductController.pageList()");
		if (pageIndex == null) {
			pageIndex = 1;
		}
		
		pageSize = 3;
		
		PageBean<Product> pageBean = productService.pageList(pageIndex, pageSize);
		model.addAttribute("pageBean", pageBean);
		return "product_show";
	}
	
	//根据条件分页查找
	@RequestMapping("/pageListByContidition")
	private String pageListByContidition(FindByCondition condition, Model model) {
		
		if (condition.getPageIndex() == null) {
			condition.setPageIndex(1);
		}
		
		condition.setPageSize(3);
		
		PageBean<Product> pageBean = productService.pageListByCondition(condition);
		model.addAttribute("pageBean", pageBean);
		return "product_show";
	}
}
