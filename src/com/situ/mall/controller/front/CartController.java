package com.situ.mall.controller.front;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonParseException;
import com.situ.mall.pojo.Product;
import com.situ.mall.service.front.IProductService;
import com.situ.mall.vo.BuyCart;
import com.situ.mall.vo.CartItem;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	private IProductService productService;
	
	@RequestMapping("/cart")
	private String cart(Model model, HttpServletRequest request){
		
		//springMVC
				ObjectMapper objectMapper = new ObjectMapper();
				//只有对象中不是空的才转换
				objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
				//购物车
				BuyCart buyCart = null;
				//获得cookie
				Cookie[] cookies = request.getCookies();
				
				//遍历cookies 查找buy_cart_cookie 不创建buyCart
				if (null != cookies && cookies.length != 0) {
					for (Cookie cookie : cookies) {
						if ("buy_cart_cookie".equals(cookie.getName())) {
							//存在buy_cart_cookie
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
				
		List<CartItem> items = buyCart.getCartItems();
		for (CartItem cartItem : items) {
			Product product = productService.findById(cartItem.getProduct().getId());
			cartItem.setProduct(product);
		}
		model.addAttribute("buyCart", buyCart);
		return "cart";
	}
	
	@RequestMapping("/addCart")
	private String addCart(Integer productId, Integer amount, Model model, 
			HttpServletRequest request, HttpServletResponse response) {
		
		//springMVC
		ObjectMapper objectMapper = new ObjectMapper();
		//只有对象中不是空的才转换
		objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
		//购物车
		BuyCart buyCart = null;
		//获得cookie
		Cookie[] cookies = request.getCookies();
		
		//遍历cookies 查找buy_cart_cookie 不创建buyCart
		if (null != cookies && cookies.length != 0) {
			for (Cookie cookie : cookies) {
				if ("buy_cart_cookie".equals(cookie.getName())) {
					//存在buy_cart_cookie
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
		
		//如果购物车buyCart为空创建buyCart
		if (null == buyCart) {
			buyCart = new BuyCart();
		}
		
		//将购物项添加到购物车
		if (null != productId) {
			Product productTemp = productService.findById(productId);
			Product product = new Product();
			product.setId(productId);
			product.setStock(productTemp.getStock());
			CartItem cartItem = new CartItem();
			cartItem.setAmount(amount);
			cartItem.setProduct(product);
			buyCart.setProductId(productId);
			buyCart.addItem(cartItem);
			
			//把buyCart以json加入到cookie
			StringWriter stringWriter = new StringWriter();
			try {
				objectMapper.writeValue(stringWriter, buyCart);
			} catch (JsonGenerationException e) {
				
				e.printStackTrace();
			} catch (JsonMappingException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			//将购物车JSon加入到cookie
			Cookie cookie = new Cookie("buy_cart_cookie", stringWriter.toString());
			//设置默认的cookie存储的时间
			cookie.setMaxAge(60 * 60 *24);
			//设置cookie的路径
			cookie.setPath("/");
			//将cookie发送到浏览器
			response.addCookie(cookie);
		}
		
		//放到域对象中返回前端展示的这个购物车，需要将Product对象填满数据才行
		/*List<CartItem> items = buyCart.getCartItems();
		for (CartItem cartItem : items) {
			Product product = productService.findById(cartItem.getProduct().getId());
			cartItem.setProduct(product);
		}
		model.addAttribute("buyCart", buyCart);*/
		return "redirect:cart.shtml";
	}
	
	//删除购物车的商品
	@RequestMapping("/delCart")
	private String delCart(Integer productId, Integer amount, HttpServletRequest request, Model model,
			HttpServletResponse response) {
		
		BuyCart buyCart = null;
		ObjectMapper objectMapper = new ObjectMapper();
		
		//获得cookie
		Cookie[] cookies = request.getCookies();
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
			if (null != cartItems) {
				
				Iterator<CartItem> iterator = cartItems.iterator();
				while (iterator.hasNext()) {
					CartItem cartItem = (CartItem) iterator.next();
					if (productId == cartItem.getProduct().getId()) {
						iterator.remove();
					}
				}
				
				//把buyCart以json加入到cookie
				System.out.println(buyCart);
				StringWriter stringWriter = new StringWriter();
				try {
					objectMapper.writeValue(stringWriter, buyCart);
				} catch (JsonGenerationException e) {
					
					e.printStackTrace();
				} catch (JsonMappingException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
				//将购物车JSon加入到cookie
				Cookie cookie = new Cookie("buy_cart_cookie", stringWriter.toString());
				//设置默认的cookie存储的时间
				cookie.setMaxAge(60 * 60 *24);
				//设置cookie的路径
				cookie.setPath("/");
				//将cookie发送到浏览器
				response.addCookie(cookie);
			}
		}
		//放到域对象中返回前端展示的这个购物车，需要将Product对象填满数据才行
		/*List<CartItem> items = buyCart.getCartItems();
		for (CartItem cartItem : items) {
			Product product = productService.findById(cartItem.getProduct().getId());
			cartItem.setProduct(product);
		}
		model.addAttribute("buyCart", buyCart);*/
		return "redirect:cart.shtml";
	}
}
