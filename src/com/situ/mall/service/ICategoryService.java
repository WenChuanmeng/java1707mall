package com.situ.mall.service;

import java.util.List;

import com.situ.mall.pojo.Category;

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

	
}
