package com.situ.mall.service.front;

import com.situ.mall.pojo.Product;

public interface IProductService {

	/**
	 * 根据id查找商品
	 * @param id
	 * @return Product
	 */
	Product findById(Integer id);

}
