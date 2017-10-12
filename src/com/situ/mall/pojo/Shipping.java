package com.situ.mall.pojo;

import java.io.Serializable;
import java.util.Date;

public class Shipping implements Serializable {


/*FieldTypeComment
idint(11)
user_idint(11)用户id
receiver_namevarchar(20)收货姓名
receiver_phonevarchar(20)收货固定电话
receiver_mobilevarchar(20)收货移动电话
receiver_provincevarchar(20)省份
receiver_cityvarchar(20)城市
receiver_districtvarchar(20)区/县
receiver_addressvarchar(200)详细地址
receiver_zipvarchar(6)邮编
create_timedatetime
update_timedatetime*/

	//自增id
	private Integer id;
	//用户id
	private Integer userId;
	//收货姓名
	private String receiverName;
	//收货固定电话
	private String receiverPhone;
	//收货移动电话
	private String receiverMobile;
	//省份
	private String receiverProvince;
	//城市
	private String receiverCity;
	//区/县
	private String receiverAddress;
	//邮编
	private String receiverZip;
	//创建时间
	private Date createTime;
	//更新时间
	private Date updateTime;
	
	public Shipping() {
		super();
		
	}

	public Shipping(Integer id, Integer userId, String receiverName, String receiverPhone, String receiverMobile,
			String receiverProvince, String receiverCity, String receiverAddress, String receiverZip, Date createTime,
			Date updateTime) {
		super();
		this.id = id;
		this.userId = userId;
		this.receiverName = receiverName;
		this.receiverPhone = receiverPhone;
		this.receiverMobile = receiverMobile;
		this.receiverProvince = receiverProvince;
		this.receiverCity = receiverCity;
		this.receiverAddress = receiverAddress;
		this.receiverZip = receiverZip;
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
	 * @return the receiverName
	 */
	public String getReceiverName() {
		return receiverName;
	}

	/**
	 * @return the receiverPhone
	 */
	public String getReceiverPhone() {
		return receiverPhone;
	}

	/**
	 * @return the receiverMobile
	 */
	public String getReceiverMobile() {
		return receiverMobile;
	}

	/**
	 * @return the receiverProvince
	 */
	public String getReceiverProvince() {
		return receiverProvince;
	}

	/**
	 * @return the receiverCity
	 */
	public String getReceiverCity() {
		return receiverCity;
	}

	/**
	 * @return the receiverAddress
	 */
	public String getReceiverAddress() {
		return receiverAddress;
	}

	/**
	 * @return the receiverZip
	 */
	public String getReceiverZip() {
		return receiverZip;
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
	 * @param receiverName the receiverName to set
	 */
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}

	/**
	 * @param receiverPhone the receiverPhone to set
	 */
	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}

	/**
	 * @param receiverMobile the receiverMobile to set
	 */
	public void setReceiverMobile(String receiverMobile) {
		this.receiverMobile = receiverMobile;
	}

	/**
	 * @param receiverProvince the receiverProvince to set
	 */
	public void setReceiverProvince(String receiverProvince) {
		this.receiverProvince = receiverProvince;
	}

	/**
	 * @param receiverCity the receiverCity to set
	 */
	public void setReceiverCity(String receiverCity) {
		this.receiverCity = receiverCity;
	}

	/**
	 * @param receiverAddress the receiverAddress to set
	 */
	public void setReceiverAddress(String receiverAddress) {
		this.receiverAddress = receiverAddress;
	}

	/**
	 * @param receiverZip the receiverZip to set
	 */
	public void setReceiverZip(String receiverZip) {
		this.receiverZip = receiverZip;
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
		return "Shipping [id=" + id + ", userId=" + userId + ", receiverName=" + receiverName + ", receiverPhone="
				+ receiverPhone + ", receiverMobile=" + receiverMobile + ", receiverProvince=" + receiverProvince
				+ ", receiverCity=" + receiverCity + ", receiverAddress=" + receiverAddress + ", receiverZip="
				+ receiverZip + ", createTime=" + createTime + ", updateTime=" + updateTime + "]";
	}
	
	
}
