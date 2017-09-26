package com.situ.mall.service;

import com.situ.mall.pojo.Product;
import com.situ.mall.vo.FindByCondition;
import com.situ.mall.vo.PageBean;

public interface IProductService {

	/**
	 * 实现分页操作
	 * @param pageIdnex
	 * @param pageSize
	 * @return PageBean<Product>
	 */
	public PageBean<Product> pageList(Integer pageIndex, Integer pageSize);

	/**
	 * 根据条件分页查找
	 * @param condition
	 * @return PageBean<Product>
	 */
	public PageBean<Product> pageListByCondition(FindByCondition condition);
	

}
