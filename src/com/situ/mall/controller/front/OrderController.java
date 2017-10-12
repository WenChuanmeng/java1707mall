package com.situ.mall.controller.front;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.mall.dao.front.ShippingDao;
import com.situ.mall.pojo.Shipping;
import com.situ.mall.pojo.User;
import com.situ.mall.service.front.IShippingService;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private IShippingService shippingService;
	
	@RequestMapping("/order")
	private String order(HttpServletRequest request, Model model) {
		
		
		HttpSession session = request.getSession();
		User userTemp = (User) session.getAttribute("user");
		Integer userId = userTemp.getId();
		Shipping shipping = shippingService.findById(userId);
		model.addAttribute("shipping", shipping);
		
		
		return "order";
	}
}
