package com.situ.mall.pojo;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.situ.mall.constant.MallConstant;

@SuppressWarnings("all")
public class Product implements Serializable {

	private Integer id;
	private Integer categoryId;
	private String name;
	private String subtitle;
	private String mainImage;
	private String subImages;
	private String detail;
	private Double price;
	private Integer stock;
	private Integer status;
	private Date createTime;
	private Date updateTime;
	private Category category;
	
	public Product() {
		super();
		
	}

	

	public Product(Integer id, Integer status) {
		super();
		this.id = id;
		this.status = status;
	}



	public Product(Integer id, Integer categoryId, String name, String subtitle, String mainImage, String subImages,
			String detail, Double price, Integer stock, Integer status, Date createTime, Date updateTime,
			Category category) {
		super();
		this.id = id;
		this.categoryId = categoryId;
		this.name = name;
		this.subtitle = subtitle;
		this.mainImage = mainImage;
		this.subImages = subImages;
		this.detail = detail;
		this.price = price;
		this.stock = stock;
		this.status = status;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.category = category;
	}



	public Product(Integer id, Integer categoryId, String name, String subtitle, String mainImage, String subImages,
			String detail, Double price, Integer stock, Integer status, Date createTime, Date updateTime) {
		super();
		this.id = id;
		this.categoryId = categoryId;
		this.name = name;
		this.subtitle = subtitle;
		this.mainImage = mainImage;
		this.subImages = subImages;
		this.detail = detail;
		this.price = price;
		this.stock = stock;
		this.status = status;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}

	@JsonIgnore
	public String getFullUrl() {
		return MallConstant.SERVER_ADDRES + mainImage;
	}

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	
	/**
	 * @return the categoryId
	 */
	public Integer getCategoryId() {
		return categoryId;
	}



	/**
	 * @param categoryId the categoryId to set
	 */
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}



	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the subtitle
	 */
	public String getSubtitle() {
		return subtitle;
	}

	/**
	 * @param subtitle the subtitle to set
	 */
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	/**
	 * @return the mainImage
	 */
	public String getMainImage() {
		return mainImage;
	}

	/**
	 * @param mainImage the mainImage to set
	 */
	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}

	/**
	 * @return the subImages
	 */
	public String getSubImages() {
		return subImages;
	}

	/**
	 * @param subImages the subImages to set
	 */
	public void setSubImages(String subImages) {
		this.subImages = subImages;
	}

	/**
	 * @return the detail
	 */
	public String getDetail() {
		return detail;
	}

	/**
	 * @param detail the detail to set
	 */
	public void setDetail(String detail) {
		this.detail = detail;
	}

	/**
	 * @return the price
	 */
	public Double getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(Double price) {
		this.price = price;
	}

	/**
	 * @return the stock
	 */
	@JsonIgnore
	public Integer getStock() {
		return stock;
	}

	/**
	 * @param stock the stock to set
	 */
	public void setStock(Integer stock) {
		this.stock = stock;
	}

	/**
	 * @return the status
	 */
	public Integer getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

	/**
	 * @return the createTime
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * @param createTime the createTime to set
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * @return the updateTime
	 */
	public Date getUpdateTime() {
		return updateTime;
	}

	/**
	 * @param updateTime the updateTime to set
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}



	/**
	 * @return the category
	 */
	public Category getCategory() {
		return category;
	}



	/**
	 * @param category the category to set
	 */
	public void setCategory(Category category) {
		this.category = category;
	}



	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Product [id=" + id + ", categoryId=" + categoryId + ", name=" + name + ", subtitle=" + subtitle
				+ ", mainImage=" + mainImage + ", subImages=" + subImages + ", detail=" + detail + ", price=" + price
				+ ", stock=" + stock + ", status=" + status + ", createTime=" + createTime + ", updateTime="
				+ updateTime + ", category=" + category + "]";
	}



	

	
	
	
}
