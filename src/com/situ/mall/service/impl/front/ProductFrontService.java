package com.situ.mall.service.impl.front;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.front.ProductFrontDao;
import com.situ.mall.pojo.Product;
import com.situ.mall.service.front.IProductService;
@Service
public class ProductFrontService implements IProductService {

	@Autowired
	private ProductFrontDao productDao;
	
	@Override
	public Product findById(Integer id) {
		
		return productDao.findById(id);
	}

}
