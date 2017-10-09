package com.situ.mall.dao.front;

import com.situ.mall.pojo.Product;

public interface ProductFrontDao {

	/**
	 * 根据id查找商品
	 * @param id
	 * @return Product
	 */
	Product findById(Integer id);

}
