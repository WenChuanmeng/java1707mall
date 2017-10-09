package com.situ.mall.service.impl.back;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.back.ProductDao;
import com.situ.mall.pojo.Product;
import com.situ.mall.service.back.IProductService;
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

	@Override
	public boolean addProduct(Product product) {
		int result = productDao.addProduct(product);
		
		return result > 0 ? true : false;
	}

	@Override
	public boolean delProduct(Integer id) {
		int reslut = productDao.delProduct(id);
		
		return reslut > 0 ? true : false;
	}

	@Override
	public boolean updateStatus(Integer id, Integer status) {
		
		
		if (status == 1) {
			status = 2;
		} else if (status == 2) {
			status = 1;
		}
		
		int result  = productDao.updateStatus(id, status);
		
		return result > 0 ? true : false;
	}

	@Override
	public Product findById(Integer id) {
		
		return productDao.findById(id);
	}

	@Override
	public boolean updateProduct(Product product) {
		
		int result = productDao.updateProduct(product);
		
		return result > 0 ? true : false;
	}

	@Override
	public boolean delAll(int[] selectIds) {
		
		int result = 0;
		for (int i = 0; i < selectIds.length; i++) {
			result = productDao.delProduct(selectIds[i]);
			result += result;
		}
		return result > 0 ? true : false;
	}

	@Override
	public boolean updateAllStatus(Map<Integer, Integer> map) {
		
		int result = 0;
		for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
			int status = entry.getValue();
			
			if (status == 1) {
				status = 2;
			} else if (status == 2) {
				status = 1;
			}
			
			result = productDao.updateStatus(entry.getKey(), status);
			result += result;
		}
		return result > 0 ? true : false;
	}

}
