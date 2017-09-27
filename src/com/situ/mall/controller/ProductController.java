package com.situ.mall.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(Date.class, new CustomDateEditor(
                new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));
        binder.registerCustomEditor(Date.class, new CustomDateEditor(
                new SimpleDateFormat("yyyy-MM-dd"), true));
    }
	
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
		model.addAttribute("condition", condition);
		return "product_show";
	}
	
	//跳转到添加页面
	@RequestMapping("/toAddProduct")
	private String toAddProduct() {
		
		return "product_add";
	}
	
	//添加商品
	@RequestMapping("/addProduct")
	private String addProduct(Product product) {
		
		product.setCreateTime(new Date());
		productService.addProduct(product);
		return "redirect:pageList.action";
	}
	
	//删除商品
	@RequestMapping("/delProduct")
	private String delProduct(Integer id) {
		
		boolean result = productService.delProduct(id);
		return "redirect:pageList.action";
	}
	
	//跳转到修改商品页面
	@RequestMapping("/toUpdateProduct")
	private String toUpdate(Integer id, Model model) {
		
		Product product = productService.findById(id);
		model.addAttribute("product", product);
		return "product_update";
	}
	
	//修改商品
	@RequestMapping("/updateProduct")
	private String updateProduct(Product product) {
		
		product.setUpdateTime(new Date());
		productService.updateProduct(product);
		return "redirect:pageList.action";
	}
	
	//修改商品的状态
	@RequestMapping("/updateStatus")
	private String updateStatus(Product product) {
		
		product.setUpdateTime(new Date());
		productService.updateStatus(product);
		return "redirect:pageList.action";
	}
}
