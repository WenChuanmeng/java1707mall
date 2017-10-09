package com.situ.mall.service.front;

import com.situ.mall.pojo.Product;
import com.situ.mall.vo.PageBean;

public interface ISearchService {

	/**
	 * 对查询到的商品进行分页
	 * @param categoryId
	 * @param pageIndex
	 * @param pageSize
	 * @return PageBean<Product>
	 */
	PageBean<Product> findByCategory(Integer categoryId, Integer pageIndex, Integer pageSize);

}
