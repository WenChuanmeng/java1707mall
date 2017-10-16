package com.situ.mall.service.front;

import java.util.List;

import com.situ.mall.pojo.Shipping;

public interface IShippingService {

	/**
	 * 根据id查找shiping表。查询user信息
	 * @param userId
	 * @return List<Shipping>
	 */
	List<Shipping> findById(Integer userId);

}
