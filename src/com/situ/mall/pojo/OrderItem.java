package com.situ.mall.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import sun.security.util.BigInt;

public class OrderItem implements Serializable{

    private Integer id;//订单子表id
    private Integer userId;//
	private Long orderNo;//
	private Integer productId;//商品id
	private String productName;//商品名称
	private String productImage;//商品图片地址
	private BigDecimal currentUnitPrice;//生成订单时的商品单价，单位是元,保留两位小数
	private int quantity;//商品数量
	private BigDecimal totalPrice;//商品总价,单位是元,保留两位小数
	private Date createTimedatetime;//
	private Date update_timedatetime;//
	
	public OrderItem() {
		super();
		
	}

	public OrderItem(Integer id, Integer userId, Long orderNo, Integer productId, String productName,
			String productImage, BigDecimal currentUnitPrice, int quantity, BigDecimal totalPrice,
			Date createTimedatetime, Date update_timedatetime) {
		super();
		this.id = id;
		this.userId = userId;
		this.orderNo = orderNo;
		this.productId = productId;
		this.productName = productName;
		this.productImage = productImage;
		this.currentUnitPrice = currentUnitPrice;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.createTimedatetime = createTimedatetime;
		this.update_timedatetime = update_timedatetime;
	}

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * @return the orderNo
	 */
	public Long getOrderNo() {
		return orderNo;
	}

	/**
	 * @return the productId
	 */
	public Integer getProductId() {
		return productId;
	}

	/**
	 * @return the productName
	 */
	public String getProductName() {
		return productName;
	}

	/**
	 * @return the productImage
	 */
	public String getProductImage() {
		return productImage;
	}

	/**
	 * @return the currentUnitPrice
	 */
	public BigDecimal getCurrentUnitPrice() {
		return currentUnitPrice;
	}

	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}

	/**
	 * @return the totalPrice
	 */
	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	/**
	 * @return the createTimedatetime
	 */
	public Date getCreateTimedatetime() {
		return createTimedatetime;
	}

	/**
	 * @return the update_timedatetime
	 */
	public Date getUpdate_timedatetime() {
		return update_timedatetime;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * @param orderNo the orderNo to set
	 */
	public void setOrderNo(Long orderNo) {
		this.orderNo = orderNo;
	}

	/**
	 * @param productId the productId to set
	 */
	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	/**
	 * @param productName the productName to set
	 */
	public void setProductName(String productName) {
		this.productName = productName;
	}

	/**
	 * @param productImage the productImage to set
	 */
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	/**
	 * @param currentUnitPrice the currentUnitPrice to set
	 */
	public void setCurrentUnitPrice(BigDecimal currentUnitPrice) {
		this.currentUnitPrice = currentUnitPrice;
	}

	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	/**
	 * @param totalPrice the totalPrice to set
	 */
	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	/**
	 * @param createTimedatetime the createTimedatetime to set
	 */
	public void setCreateTimedatetime(Date createTimedatetime) {
		this.createTimedatetime = createTimedatetime;
	}

	/**
	 * @param update_timedatetime the update_timedatetime to set
	 */
	public void setUpdate_timedatetime(Date update_timedatetime) {
		this.update_timedatetime = update_timedatetime;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "OrderItem [id=" + id + ", userId=" + userId + ", orderNo=" + orderNo + ", productId=" + productId
				+ ", productName=" + productName + ", productImage=" + productImage + ", currentUnitPrice="
				+ currentUnitPrice + ", quantity=" + quantity + ", totalPrice=" + totalPrice + ", createTimedatetime="
				+ createTimedatetime + ", update_timedatetime=" + update_timedatetime + "]";
	}

	
}