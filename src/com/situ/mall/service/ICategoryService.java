package com.situ.mall.service;

import java.util.List;
import java.util.Map;

import com.situ.mall.pojo.Category;
import com.situ.mall.vo.FindByCondition;
import com.situ.mall.vo.PageBean;

public interface ICategoryService {

	/**
	 * 查询全部的父类分类
	 * @return List<Category>
	 */
	List<Category> fingAllCategoryParent();

	/**
	 * 根据父类的id查询子类
	 * @param parentId
	 * @return List<Category>
	 */
	List<Category> findAllCategory(Integer parentId);

	/**
	 * 进行分页查询
	 * @param pageIndex
	 * @param pageSize
	 * @return PageBean<Category>
	 */
	PageBean<Category> pageList(Integer pageIndex, Integer pageSize);

	/**
	 * 根据条件分页
	 * @param condition
	 * @return PageBean<Category>
	 */
	PageBean<Category> pageListByCondition(FindByCondition condition);

	/**
	 * 添加分类
	 * @param category
	 * @return boolean
	 */
	boolean addCategory(Category category);

	/**
	 * 删除分类
	 * @param id
	 * @return boolean
	 */
	boolean delCategory(Integer id);

	/**
	 * 更改分类状态
	 * @param category
	 * @return boolean
	 */
	boolean updateStatus(Integer id, Integer status);

	/**
	 * 批量修改
	 * @param map
	 * @return boolean
	 */
	boolean updateAllStatus(Map<Integer, Integer> map);

	/**
	 * 批量删除
	 * @param selectIds
	 * @return boolean
	 */
	boolean delAll(Integer[] selectIds);

	
}
