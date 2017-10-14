package com.situ.mall.service.back;

import com.situ.mall.pojo.Order;
import com.situ.mall.vo.PageBean;

public interface IOrderManagerService {

	/**
	 * 查询订单
	 * @param pageIndex
	 * @param pageSize
	 * @return PageBean<Order>
	 */
	PageBean<Order> pageList(Integer pageIndex, Integer pageSize);

}
