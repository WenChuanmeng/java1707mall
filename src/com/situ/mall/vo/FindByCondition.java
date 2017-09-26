package com.situ.mall.vo;

import java.io.Serializable;

import com.situ.mall.pojo.Category;
import com.situ.mall.pojo.Product;

@SuppressWarnings("all")
public class FindByCondition implements Serializable {

	private Integer pageIndex;
	private Integer pageSize;
	private Product product;
	private Category category;
	
	public FindByCondition() {
		super();
		
	}
	
	public FindByCondition(Integer pageIndex, Integer pageSize, Product product, Category category) {
		super();
		this.pageIndex = pageIndex;
		this.pageSize = pageSize;
		this.product = product;
		this.category = category;
	}

	/**
	 * @return the pageIndex
	 */
	public Integer getPageIndex() {
		return pageIndex;
	}

	/**
	 * @param pageIndex the pageIndex to set
	 */
	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}

	/**
	 * @return the pageSize
	 */
	public Integer getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageSize the pageSize to set
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * @return the product
	 */
	public Product getProduct() {
		return product;
	}

	/**
	 * @param product the product to set
	 */
	public void setProduct(Product product) {
		this.product = product;
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
		return "FindByCondition [pageIndex=" + pageIndex + ", pageSize=" + pageSize + ", product=" + product
				+ ", category=" + category + "]";
	}
	
	
}
