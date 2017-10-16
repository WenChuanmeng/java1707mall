package com.situ.mall.service.impl.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.front.OrderDao;
import com.situ.mall.pojo.Order;
import com.situ.mall.pojo.OrderItem;
import com.situ.mall.service.front.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService {

	@Autowired
	private OrderDao orderDao;
	@Override
	public boolean add(Order order) {
		
		int result = orderDao.add(order);
		return result > 0 ? true : false;
	}
	@Override
	public int addOrderItem(OrderItem orderItem) {
		
		return orderDao.addOrderItem(orderItem);
	}
	@Override
	public List<OrderItem> findByOrderNo(Long orderNo) {
		
		return orderDao.findByOrderNo(orderNo);
	}
	@Override
	public List<Order> findOrderByUserId(Integer id) {
		
		return orderDao.findOrderByUserId(id);
	}

	
}
