package com.situ.mall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.situ.mall.pojo.Category;
import com.situ.mall.vo.FindByCondition;

public interface CategoryDao {

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
	 * 没有条件的分页
	 * @param pageIndex
	 * @param pageSize
	 * @return List<Category>
	 */
	List<Category> pageList(@Param("pageIndex")Integer pageIndex, @Param("pageSize")Integer pageSize);

	/**
	 * 查询一共有多少条数据
	 * @return int
	 */
	int totalSize();

	/**
	 * 根据条件查询数据的个数
	 * @param condition
	 * @return int
	 */
	int totalSizeByCondition(FindByCondition condition);

	/**
	 * 根据条件分页
	 * @param condition
	 * @return List<Category>
	 */
	List<Category> pageListByCondition(FindByCondition condition);

	/**
	 * 添加分类
	 * @param category
	 * @return int
	 */
	int addCategory(Category category);

	/**
	 * 删除分类
	 * @param id
	 * @return int
	 */
	int delCategory(Integer id);

	/**
	 * 更改状态
	 * @param category
	 * @return int
	 */
	int updateStatus(@Param("id")Integer id, @Param("status")Integer status);

	/**
	 * 获得所有的分类
	 * @return List<Category>
	 */
	List<Category> findAllChildCategory();

}
