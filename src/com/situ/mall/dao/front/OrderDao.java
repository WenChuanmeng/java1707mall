package com.situ.mall.dao.front;

import java.util.List;

import com.situ.mall.pojo.Order;
import com.situ.mall.pojo.OrderItem;

public interface OrderDao {

	/**
	 * 添加订单
	 * @param order
	 * @return int
	 */
	int add(Order order);

	/**
	 * 添加订单项
	 * @param order
	 * @return int
	 */
	int addOrderItem(OrderItem orderItem);

	/**
	 * 根据订单号查询订单项
	 * @param orderNo
	 * @return List<OrderItem>
	 */
	List<OrderItem> findByOrderNo(Long orderNo);

}
