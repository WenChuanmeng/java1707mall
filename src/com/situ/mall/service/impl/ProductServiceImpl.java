package com.situ.mall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.ProductDao;
import com.situ.mall.pojo.Product;
import com.situ.mall.service.IProductService;
import com.situ.mall.vo.FindByCondition;
import com.situ.mall.vo.PageBean;

@Service
public class ProductServiceImpl implements IProductService {

	@Autowired
	private ProductDao productDao;
	
	@Override
	public PageBean<Product> pageList(Integer pageIndex, Integer pageSize) {

		PageBean<Product> pageBean = new PageBean<Product>();
		pageBean.setPageIndex(pageIndex);//获得当前页
		pageBean.setPageSize(pageSize);//获得这一页的数据条数
		//获得数据库一共用多少数据
		int totalSize = productDao.totalSzie();
		//获得多少页
		int totalPage = (int) Math.ceil(1.0 * totalSize / pageSize);
		pageIndex = (pageIndex - 1) * pageSize;
		pageBean.setTotalPage(totalPage);
		pageBean.setTotalSize(totalSize);
		List<Product> list = productDao.pageLsit(pageIndex, pageSize);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public PageBean<Product> pageListByCondition(FindByCondition condition) {
		
		PageBean<Product> pageBean = new PageBean<Product>();
		pageBean.setPageIndex(condition.getPageIndex());
		pageBean.setPageSize(condition.getPageSize());
		int totalSize = productDao.totalSizeByCondition(condition);//获得符合条件的个数
		int totalPage = (int) Math.ceil(1.0 * totalSize / condition.getPageSize());
		pageBean.setTotalPage(totalPage);
		pageBean.setTotalSize(totalSize);
		condition.setPageIndex((condition.getPageIndex() - 1) * condition.getPageSize());
		List<Product> list = productDao.pageListByCondition(condition);
		pageBean.setList(list);
		return pageBean;
	}

}
