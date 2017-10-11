package com.situ.mall.vo;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class BuyCart {

	//购物车的商品信息
	List<CartItem> cartItems = new ArrayList<CartItem>();
	//最后一次加入购物车的商品的ID
	private Integer productId;
	
	public void addItem(CartItem cartItem) {
		
		//判断有没这件商品
		boolean isExist = false;
		//如果商品之前在购物车中，需要更改购物车中商品的数量就是amount
		for (CartItem item : cartItems) {
			if (item.getProduct().getId() == cartItem.getProduct().getId()) {
				//存在这件商品将isExist设置为true
				isExist = true;
				//对之前购物车的数量和新选购的商品的数量进行相加
				int amount = item.getAmount() + cartItem.getAmount();
				//判断商品的数量有没有超过库存
				if (amount <= cartItem.getProduct().getStock()) {
					//如果没有超过库存则将数量添加到购物车
					item.setAmount(amount);
				} else {
					//如果数量超过库存数量则将库存的添加到amount
					item.setAmount(cartItem.getProduct().getStock());
				}
				return;
			}
		}
		//如果没有该商品则将该商品加入到购物车
		if (!isExist) {
			cartItems.add(cartItem);
		}
	}
	
	//计算总价
	@JsonIgnore
	public Double getTotalPrice() {
		Double totalPrice = 0.00;
		if (null != cartItems){
			for (CartItem cartItem : cartItems) {
				totalPrice += cartItem.getProduct().getPrice() * cartItem.getAmount();
			}
		}
		
		return totalPrice;
	}
	
	/**
	 * @return the cartItems
	 */
	public List<CartItem> getCartItems() {
		return cartItems;
	}
	/**
	 * @return the productId
	 */
	public Integer getProductId() {
		return productId;
	}
	/**
	 * @param cartItems the cartItems to set
	 */
	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	/**
	 * @param productId the productId to set
	 */
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "BuyCart [cartItems=" + cartItems + ", productId=" + productId + "]";
	}
	
	
}
