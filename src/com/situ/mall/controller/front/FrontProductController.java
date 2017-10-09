package com.situ.mall.controller.front;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.mall.pojo.Product;
import com.situ.mall.service.IProductService;

@Controller
@RequestMapping("product")
public class FrontProductController {

	@Autowired
	private IProductService productService;
	
	@RequestMapping("detail.shtml")
	private String productDetail(Integer id, Model model) {
		
		Product product = productService.findById(id);
		model.addAttribute("product", product);
		return "product_detail";
	}
}
