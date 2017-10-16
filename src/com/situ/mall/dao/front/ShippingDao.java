package com.situ.mall.dao.front;

import java.util.List;

import com.situ.mall.pojo.Shipping;

public interface ShippingDao {

	/**
	 * 根据id查找shiping表。查询user信息
	 * @param userId
	 * @return Shipping
	 */
	List<Shipping> findById(Integer userId);

}
