package com.situ.mall.service.impl.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.front.CategoryFrontDao;
import com.situ.mall.pojo.Category;
import com.situ.mall.service.front.ICategoryService;

@Service
public class CategoryServiceFrontImpl implements ICategoryService {

	@Autowired
	private CategoryFrontDao categoryDao;
	
	@Override
	public List<Category> fingAllCategoryParent() {
		
		return categoryDao.fingAllCategoryParent();
	}

	@Override
	public List<Category> findAllChildCategory() {
		
		return categoryDao.findAllChildCategory();
	}

}
