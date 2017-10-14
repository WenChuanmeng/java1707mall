package com.situ.mall.service.impl.back;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.back.OrderManagerDao;
import com.situ.mall.pojo.Order;
import com.situ.mall.service.back.IOrderManagerService;
import com.situ.mall.vo.PageBean;

@Service
public class OrderManagerServiceImpl implements IOrderManagerService {

	@Autowired
	private OrderManagerDao orderManagerDao;
	@Override
	public PageBean<Order> pageList(Integer pageIndex, Integer pageSize) {

		PageBean<Order> pageBean = new PageBean<Order>();
		pageBean.setPageIndex(pageIndex);
		pageBean.setPageSize(pageSize);
		int totalSize = orderManagerDao.totalSize();
		int totalPage = (int) Math.ceil(1.0 * totalSize / pageSize);
		pageBean.setTotalSize(totalSize);
		pageBean.setTotalPage(totalPage);
		List<Order> list = orderManagerDao.pageList(pageIndex, pageSize);
		pageBean.setList(list);
		return pageBean;
	}

}
