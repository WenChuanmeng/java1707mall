package com.situ.mall.dao.back;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.situ.mall.pojo.Order;
import com.situ.mall.pojo.OrderItem;

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
	List<Order> pageList(@Param("pageIndex")Integer pageIndex, @Param("pageSize")Integer pageSize);

	/**
	 * 查询指定的订单号的订单项的数量
	 * @param orderNo
	 * @return int
	 */
	int totalSizeByOrderNo(Long orderNo);

	/**
	 * 查询指定的订单号的订单项
	 * @param orderNo
	 * @return List<OrderItem>
	 */
	List<OrderItem> pageListByOrderNo(Long orderNo, Integer pageIndex, Integer pageSize);

}
