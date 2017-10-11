package com.situ.mall.vo;

import com.situ.mall.pojo.Product;

public class CartItem {

	//商品的id
	private Integer amount;
	//商品
	private Product product;
	/**
	 * @return the amount
	 */
	public Integer getAmount() {
		return amount;
	}
	/**
	 * @return the product
	 */
	public Product getProduct() {
		return product;
	}
	/**
	 * @param amount the amount to set
	 */
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	/**
	 * @param product the product to set
	 */
	public void setProduct(Product product) {
		this.product = product;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "CartItem [amount=" + amount + ", product=" + product + "]";
	}
	
	
	
	
	
}
