package com.situ.mall.controller.front;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.situ.mall.dao.front.ShippingDao;
import com.situ.mall.pojo.Product;
import com.situ.mall.pojo.Shipping;
import com.situ.mall.pojo.User;
import com.situ.mall.service.front.IProductService;
import com.situ.mall.service.front.IShippingService;
import com.situ.mall.vo.BuyCart;
import com.situ.mall.vo.CartItem;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private IShippingService shippingService;
	
	@Autowired
	private IProductService productService;
	
	@RequestMapping("/order")
	private String order(HttpServletRequest request, Model model) {
		
		
		HttpSession session = request.getSession();
		User userTemp = (User) session.getAttribute("user");
		Integer userId = userTemp.getId();
		Shipping shipping = shippingService.findById(userId);
		model.addAttribute("shipping", shipping);
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		//获得购物车的信息
		BuyCart buyCart = null;
		Cookie[] cookies = request.getCookies();
		//判断cookie是否为空
		if (null != cookies && cookies.length !=0) {
			//循环遍历cookie
			for (Cookie cookie : cookies) {
				//判断cookie中有没有buy_cart_cookie
				if ("buy_cart_cookie".equals(cookie.getName())) {
					//获得buy_cart_cookie中的buyCart
					String value = cookie.getValue();
					try {
						buyCart = objectMapper.readValue(value, BuyCart.class);
					} catch (JsonParseException e) {
						
						e.printStackTrace();
					} catch (JsonMappingException e) {
						
						e.printStackTrace();
					} catch (IOException e) {
						
						e.printStackTrace();
					}
				}
				
			}
			
			//当buyCart不为空的时候将buyCart中的值添加到域中
			if (null != buyCart) {
				List<CartItem> cartItems = buyCart.getCartItems();
				Iterator<CartItem> iterator = cartItems.iterator();
				while (iterator.hasNext()) {
					CartItem cartItem = (CartItem) iterator.next();
					Product product = productService.findById(cartItem.getProduct().getId());
					cartItem.setProduct(product);
				}
			}
			
		}
		model.addAttribute("buyCart", buyCart);
		return "order";
	}
}
