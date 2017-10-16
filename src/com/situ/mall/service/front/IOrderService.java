package com.situ.mall.service.front;

import java.util.List;

import com.situ.mall.pojo.Order;
import com.situ.mall.pojo.OrderItem;

public interface IOrderService {

	/**
	 * 添加订单
	 * @param order
	 * @return boolean
	 */
	boolean add(Order order);

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

	/**
	 * 查看订单页面展示订单
	 * @param id
	 * @return List<Order>
	 */
	List<Order> findOrderByUserId(Integer id);

}
