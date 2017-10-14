package com.situ.mall.dao.back;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.situ.mall.pojo.Product;
import com.situ.mall.vo.FindByCondition;

public interface ProductDao {

	/**
	 * 获得数据库中数量的数量
	 * @return int
	 */
	int totalSzie();

	/**
	 * 进行分页
	 * @param pageIndex
	 * @param pageSize
	 * @return List<Product>
	 */
	List<Product> pageLsit(@Param("pageIndex")Integer pageIndex, @Param("pageSize")Integer pageSize);

	/**
	 * 根据条件查询数据的数量
	 * @param condition
	 * @return int
	 */
	int totalSizeByCondition(FindByCondition condition);

	/**
	 * 根据条件查询数据库的数据
	 * @param condition
	 * @return List<Product>
	 */
	List<Product> pageListByCondition(FindByCondition condition);

	/**
	 * 添加商品
	 * @param product
	 * @return int
	 */
	int addProduct(Product product);

	/**
	 * 根据id删除商品
	 * @param id
	 * @return boolean
	 */
	int delProduct(Integer id);

	/**
	 * 修改商品的状态
	 * @param id
	 * @param status
	 * @return int
	 */
	int updateStatus(@Param("id")Integer id, @Param("status")Integer status);

	/**
	 * 根据id查找商品
	 * @param id
	 * @return Product
	 */
	Product findById(Integer id);

	/**
	 * 修改商品
	 * @param product
	 * @return boolean
	 */
	int updateProduct(Product product);

	/**
	 * 查询所有商品返回json
	 * @return ServerResponse<List<Product>>
	 */
	List<Product> findAllByJson();

}
