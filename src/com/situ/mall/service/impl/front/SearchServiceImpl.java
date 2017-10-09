package com.situ.mall.service.impl.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.front.SearchDao;
import com.situ.mall.pojo.Product;
import com.situ.mall.service.front.ISearchService;
import com.situ.mall.vo.PageBean;

@Service
public class SearchServiceImpl implements ISearchService {
	
	@Autowired
	private SearchDao searchDao;

	@Override
	public PageBean<Product> findByCategory(Integer categoryId, Integer pageIndex, Integer pageSize) {

		PageBean<Product> pageBean = new PageBean<Product>();
		pageBean.setPageIndex(pageIndex);
		pageBean.setPageSize(pageSize);
		int totalSize = searchDao.totalSize(categoryId);
		int totalPage = (int) Math.ceil(1.0 * totalSize / pageSize);
		pageIndex = (pageIndex - 1) * pageSize;
		pageBean.setTotalPage(totalPage);
		pageBean.setTotalSize(totalSize);
		List<Product> list = searchDao.pageList(categoryId, pageIndex, pageSize);
		pageBean.setList(list);
		return pageBean;
	}

}
