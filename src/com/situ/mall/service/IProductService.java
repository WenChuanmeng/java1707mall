package com.situ.mall.service;

import java.util.Map;

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

	/**
	 * 添加商品
	 * @param product
	 * @return boolean
	 */
	public boolean addProduct(Product product);

	/**
	 * 根据id删除商品
	 * @param id
	 * @return boolean
	 */
	public boolean delProduct(Integer id);

	/**
	 * 修改商品的状态
	 * @param id
	 * @param status
	 * @return boolean
	 */
	public boolean updateStatus(Integer id, Integer status);

	/**
	 * 根据id查找商品
	 * @param id
	 * @return Product
	 */
	public Product findById(Integer id);

	/**
	 * 修改商品
	 * @param product
	 * @return boolean
	 */
	public boolean updateProduct(Product product);

	/**
	 * 批量删除
	 * @param selectIds
	 * @return boolean
	 */
	public boolean delAll(int[] selectIds);

	/**
	 * 批量修改商品状态
	 * @param map
	 * @return boolean
	 */
	public boolean updateAllStatus(Map<Integer, Integer> map);
	

}
