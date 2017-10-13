package com.situ.mall.pojo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import sun.security.util.BigInt;

public class Order implements Serializable{

	//订单ID
	private Integer id;
	//用户ID
	private Integer userId;
	//订单号
	private Long orderNo;
	//shipingId
	private Integer shippingId;
	//实际付款金额
	private BigDecimal payment;
	//支付类型
	private Integer paymentType;
	//运费
	private Integer postage;
	//订单状态:0-已取消-10-未付款，20-已付款，40-已发货，50-交易成功，60-交易关闭
	private Integer status;
	private Date paymentTime;//支付时间
	private Date sendTime;//发货时间
	private Date endTime;//交易完成时间
	private Date closeTime;//交易关闭时间
	private Date createTime;//创建时间
	private Date updateTime;//更新时间
	
	public Order() {
		super();
		
	}

	public Order(Integer id, Integer userId, Long orderNo, Integer shippingId, BigDecimal payment, Integer paymentType,
			Integer postage, Integer status, Date paymentTime, Date sendTime, Date endTime, Date closeTime,
			Date createTime, Date updateTime) {
		super();
		this.id = id;
		this.userId = userId;
		this.orderNo = orderNo;
		this.shippingId = shippingId;
		this.payment = payment;
		this.paymentType = paymentType;
		this.postage = postage;
		this.status = status;
		this.paymentTime = paymentTime;
		this.sendTime = sendTime;
		this.endTime = endTime;
		this.closeTime = closeTime;
		this.createTime = createTime;
		this.updateTime = updateTime;
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
	 * @return the shippingId
	 */
	public Integer getShippingId() {
		return shippingId;
	}

	/**
	 * @return the payment
	 */
	public BigDecimal getPayment() {
		return payment;
	}

	/**
	 * @return the paymentType
	 */
	public Integer getPaymentType() {
		return paymentType;
	}

	/**
	 * @return the postage
	 */
	public Integer getPostage() {
		return postage;
	}

	/**
	 * @return the status
	 */
	public Integer getStatus() {
		return status;
	}

	/**
	 * @return the paymentTime
	 */
	public Date getPaymentTime() {
		return paymentTime;
	}

	/**
	 * @return the sendTime
	 */
	public Date getSendTime() {
		return sendTime;
	}

	/**
	 * @return the endTime
	 */
	public Date getEndTime() {
		return endTime;
	}

	/**
	 * @return the closeTime
	 */
	public Date getCloseTime() {
		return closeTime;
	}

	/**
	 * @return the createTime
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * @return the updateTime
	 */
	public Date getUpdateTime() {
		return updateTime;
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
	 * @param shippingId the shippingId to set
	 */
	public void setShippingId(Integer shippingId) {
		this.shippingId = shippingId;
	}

	/**
	 * @param payment the payment to set
	 */
	public void setPayment(BigDecimal payment) {
		this.payment = payment;
	}

	/**
	 * @param paymentType the paymentType to set
	 */
	public void setPaymentType(Integer paymentType) {
		this.paymentType = paymentType;
	}

	/**
	 * @param postage the postage to set
	 */
	public void setPostage(Integer postage) {
		this.postage = postage;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

	/**
	 * @param paymentTime the paymentTime to set
	 */
	public void setPaymentTime(Date paymentTime) {
		this.paymentTime = paymentTime;
	}

	/**
	 * @param sendTime the sendTime to set
	 */
	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}

	/**
	 * @param endTime the endTime to set
	 */
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	/**
	 * @param closeTime the closeTime to set
	 */
	public void setCloseTime(Date closeTime) {
		this.closeTime = closeTime;
	}

	/**
	 * @param createTime the createTime to set
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * @param updateTime the updateTime to set
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Order [id=" + id + ", userId=" + userId + ", orderNo=" + orderNo + ", shippingId=" + shippingId
				+ ", payment=" + payment + ", paymentType=" + paymentType + ", postage=" + postage + ", status="
				+ status + ", paymentTime=" + paymentTime + ", sendTime=" + sendTime + ", endTime=" + endTime
				+ ", closeTime=" + closeTime + ", createTime=" + createTime + ", updateTime=" + updateTime + "]";
	}

	

	
}