package com.situ.mall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.CategoryDao;
import com.situ.mall.pojo.Category;
import com.situ.mall.service.ICategoryService;

@Service
public class CategoryServiceImpl implements ICategoryService {

	@Autowired
	private CategoryDao categoryDao;
	
	@Override
	public List<Category> fingAllCategoryParent() {
		
		return categoryDao.fingAllCategoryParent();
	}

	@Override
	public List<Category> findAllCategory(Integer parentId) {
		
		return categoryDao.findAllCategory(parentId);
	}

}
