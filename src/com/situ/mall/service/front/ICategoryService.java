package com.situ.mall.service.front;

import java.util.List;

import com.situ.mall.pojo.Category;

public interface ICategoryService {

	/**
	 * 查询全部的父类分类
	 * @return List<Category>
	 */
	List<Category> fingAllCategoryParent();

	/**
	 * 获得所有的分类
	 * @return List<Category>
	 */
	List<Category> findAllChildCategory();

}
