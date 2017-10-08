package com.situ.mall.pojo;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("all")
public class Banner implements Serializable {

	private Integer id;
	private String name;
	private Integer status;
	private String imageUrl;
	private Date createTime;
	private Date updateTime;
	
	public Banner() {
		super();
		
	}

	public Banner(Integer id, String name, Integer status, String imageUrl, Date createTime, Date updateTime) {
		super();
		this.id = id;
		this.name = name;
		this.status = status;
		this.imageUrl = imageUrl;
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @return the status
	 */
	public Integer getStatus() {
		return status;
	}

	/**
	 * @return the imageUrl
	 */
	public String getImageUrl() {
		return imageUrl;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

	/**
	 * @param imageUrl the imageUrl to set
	 */
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
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
		return "Banner [id=" + id + ", name=" + name + ", status=" + status + ", imageUrl=" + imageUrl + ", createTime="
				+ createTime + ", updateTime=" + updateTime + "]";
	}

	
	
	
}
