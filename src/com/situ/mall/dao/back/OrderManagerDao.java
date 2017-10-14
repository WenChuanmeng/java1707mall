package com.situ.mall.dao.back;

import java.util.List;

import com.situ.mall.pojo.Order;

public interface OrderManagerDao {

	/**
	 * 获得订单的数量
	 * @return int
	 */
	int totalSize();

	/**
	 * 对订单进行分页
	 * @param pageIndex
	 * @param pageSize
	 * @return List<Order>
	 */
	List<Order> pageList(Integer pageIndex, Integer pageSize);

}
