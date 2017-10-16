package com.situ.mall.controller.front;

import java.io.IOException;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.situ.mall.pojo.Order;
import com.situ.mall.pojo.OrderItem;
import com.situ.mall.pojo.Product;
import com.situ.mall.pojo.Shipping;
import com.situ.mall.pojo.User;
import com.situ.mall.service.front.IOrderService;
import com.situ.mall.service.front.IProductService;
import com.situ.mall.service.front.IShippingService;
import com.situ.mall.vo.BuyCart;
import com.situ.mall.vo.CartItem;
import com.sun.org.apache.xerces.internal.util.SynchronizedSymbolTable;

import sun.security.util.BigInt;

@Controller
@RequestMapping("/order")
public class OrderController {

	//防止刷新重提交订单，构造一个静态变量来接受订单编号 order_no
	private static Long orderNo;
	@Autowired
	private IShippingService shippingService;
	
	@Autowired
	private IProductService productService;
	
	@Autowired
	private IOrderService orderService;
	
	@RequestMapping("/order")
	private String order(HttpServletRequest request, Model model) {
		
		
		HttpSession session = request.getSession();
		User userTemp = (User) session.getAttribute("user");
		Integer userId = userTemp.getId();
		List<Shipping> list = shippingService.findById(userId);
		model.addAttribute("list", list);
		
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
	
	@RequestMapping("/addOrder")
	private String addOrder(Order order, HttpServletRequest request, Model model, HttpServletResponse response) {

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		orderNo = System.currentTimeMillis();//生成订单号
		order.setOrderNo(orderNo);
		System.out.println(order);
		order.setUserId(user.getId());
		//将订单插入数据库
		boolean b = orderService.add(order);
		
		ObjectMapper objectMapper = new ObjectMapper();
		//只有对象中不是空的才转换
		objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
		//从cookie中得到购物车
		BuyCart buyCart = null;
		Cookie[] cookies = request.getCookies();
		//判断cookie是否为空
		if (null != cookies && cookies.length != 0) {
			for (Cookie cookie : cookies) {
				if ("buy_cart_cookie".equals(cookie.getName())) {
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
		}
		
		if (null != buyCart) {
			List<CartItem> cartItems = buyCart.getCartItems();
			for (CartItem cartItem : cartItems) {
				OrderItem orderItem = new OrderItem();
				Product product = productService.findById(cartItem.getProduct().getId());
				orderItem.setUserId(user.getId());
				orderItem.setOrderNo(orderNo);
				orderItem.setProductId(product.getId());
				orderItem.setProductName(product.getName());
				orderItem.setProductImage(product.getMainImage());
				orderItem.setCurrentUnitPrice(BigDecimal.valueOf(product.getPrice()));
				orderItem.setQuantity(cartItem.getAmount());
				orderItem.setTotalPrice(BigDecimal.valueOf(product.getPrice() * cartItem.getAmount()));
				orderService.addOrderItem(orderItem);
			}
		}
		
		//将订单加入到数据库中后，清除cookie
		Cookie cookie = new Cookie("buy_cart_cookie", null);
		cookie.setPath("/");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		
		//防止刷新订单，重定向到pay页面
		return "redirect:pay.shtml";
	}
	
	//pay页面
	@RequestMapping("/pay")
	private String pay( Model model) {
		Double totalPrice = 0.00;
		List<OrderItem> list = orderService.findByOrderNo(orderNo);
		for (OrderItem orderItem : list) {
			totalPrice += orderItem.getTotalPrice().doubleValue();
		}
		model.addAttribute("orderNo", orderNo);
		model.addAttribute("totalPrice", totalPrice);
		return "pay";
	}

	/**
	 * @return the orderNo
	 */
	public static Long getOrderNo() {
		return orderNo;
	}

	/**
	 * @param orderNo the orderNo to set
	 */
	public static void setOrderNo(Long orderNo) {
		OrderController.orderNo = orderNo;
	}
	
	//查看我的订单
	@RequestMapping("/myOrder")
	private String myOrder(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		List<Order> list =  orderService.findOrderByUserId(user.getId());
		model.addAttribute("list", list);
		return "my_order";
	}
}
