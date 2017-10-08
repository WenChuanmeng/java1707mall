package com.situ.mall.service.impl.back;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.CategoryDao;
import com.situ.mall.pojo.Category;
import com.situ.mall.service.back.ICategoryService;
import com.situ.mall.vo.FindByCondition;
import com.situ.mall.vo.PageBean;

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

	@Override
	public PageBean<Category> pageList(Integer pageIndex, Integer pageSize) {
		
		PageBean<Category> pageBean = new PageBean<Category>();
		pageBean.setPageIndex(pageIndex);//当前页
		pageBean.setPageSize(pageSize);//一页有多少数据
		//查询一共有多少条数据
		int totalSize = categoryDao.totalSize();
		//一共有多少页
		int totalPage = (int) Math.ceil(1.0 * totalSize / pageSize);
		pageBean.setTotalPage(totalPage);
		pageBean.setTotalSize(totalSize);
		pageIndex = (pageIndex - 1) * pageSize;
		List<Category> list = categoryDao.pageList(pageIndex, pageSize);
		pageBean.setList(list);
		
		return pageBean;
	}

	@Override
	public PageBean<Category> pageListByCondition(FindByCondition condition) {
		
		PageBean<Category> pageBean = new PageBean<Category>();
		pageBean.setPageIndex(condition.getPageIndex());//当前页
		pageBean.setPageSize(condition.getPageSize());//一页有多少数据
		//查询一共有多少条数据
		int totalSize = categoryDao.totalSizeByCondition(condition);
		//一共有多少页
		int totalPage = (int) Math.ceil(1.0 * totalSize / condition.getPageSize());
		pageBean.setTotalPage(totalPage);
		pageBean.setTotalSize(totalSize);
		condition.setPageIndex((condition.getPageIndex() - 1) * condition.getPageSize());
		List<Category> list = categoryDao.pageListByCondition(condition);
		pageBean.setList(list);
		
		return pageBean;
	}

	@Override
	public boolean addCategory(Category category) {
		int result = categoryDao.addCategory(category);
		return result > 0 ? true : false;
	}

	@Override
	public boolean delCategory(Integer id) {
		int result = categoryDao.delCategory(id);
		return result > 0 ? true : false;
	}

	@Override
	public boolean updateStatus(Integer id, Integer status) {
		
		
		if (status == 1) {
			status = 2;
		} else if (status == 2) {
			status = 1;
		}

		int result = categoryDao.updateStatus(id, status);
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
			
			result = categoryDao.updateStatus(entry.getKey(), status);
			result += result;
		}
		return result > 0 ? true : false;
	}

	@Override
	public boolean delAll(Integer[] selectIds) {
		
		int result = 0;
		for (int i = 0; i < selectIds.length; i++) {
			result = categoryDao.delCategory(selectIds[i]);
			result += result;
		}
		return result > 0 ? true : false;
	}

	@Override
	public List<Category> findAllChildCategory() {
		
		return categoryDao.findAllChildCategory();
	}

}
