package com.situ.mall.controller.back;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.situ.mall.pojo.Category;
import com.situ.mall.service.ICategoryService;
import com.situ.mall.vo.FindByCondition;
import com.situ.mall.vo.PageBean;

@Controller
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	private ICategoryService categoryService;
	
	//查询所有的分类的父类
	@RequestMapping("/categoryParent")
	@ResponseBody
	private List<Category> categoryParent() {
		
		List<Category> cplist = categoryService.fingAllCategoryParent();
		for (Category category : cplist) {
			System.out.println(category);
		}
		return cplist;
	}
	
	//查找左右的子类
	@RequestMapping("/category")
	@ResponseBody
	private List<Category> category(Integer parentId) {
		System.out.println(parentId);
		List<Category> clist = categoryService.findAllCategory(parentId);
		return clist;
	}
	
	//无条件分页
	@RequestMapping("pageList")
	private String pageList(Integer pageIndex, Integer pageSize, Model model) {
		
		if (pageIndex == null) {
			pageIndex = 1;
		}
		
		pageSize = 10;
		List<Category> cplist = categoryService.fingAllCategoryParent();
		model.addAttribute("cplist", cplist);
		PageBean<Category> pageBean = categoryService.pageList(pageIndex, pageSize);
		model.addAttribute("pageBean", pageBean);
		return "category_show";
	}
	
	//根据查询条件分页
	@RequestMapping("/pageListByCondition")
	private String pageListByCondition(FindByCondition condition, Model model) {
		
		
		if (condition.getPageIndex() == null) {
			condition.setPageIndex(1);
		}
		
		condition.setPageSize(10);
		List<Category> cplist = categoryService.fingAllCategoryParent();
		model.addAttribute("cplist", cplist);
		PageBean<Category> pageBean = categoryService.pageListByCondition(condition);
		model.addAttribute("condition", condition);
		model.addAttribute("pageBean", pageBean);
		return "category_show";
	}
	
	//跳转到添加分类页面
	@RequestMapping("/toAddCategory")
	private String toAddCategory(Model model) {
		
		List<Category> cplist = categoryService.fingAllCategoryParent();
		model.addAttribute("cplist", cplist);
		return "category_add";
	}
	
	//添加分类页面
	@RequestMapping("/addCategory")
	private String addCategory(Category category) {
		
		categoryService.addCategory(category);
		return "redirect:pageList.action";
	}
	
	//修改状态
	@RequestMapping("updateStatus")
	private String updateStatus(Integer id, Integer status) {
		
		categoryService.updateStatus(id, status);
		return "redirect:pageList.action";
	}
	
	//删除分类
	@RequestMapping("/delCategory")
	private String delCategory(Integer id) {
		
		categoryService.delCategory(id);
		return "redirect:pageList.action";
	}
	
	//批量修改
	@RequestMapping("/updateAllStatus")
	private String updateAllStatus(int[] selectIds, int[] statusIds) {
		
		Map<Integer, Integer> map = new HashMap<Integer, Integer>();
		for (int i = 0; i < selectIds.length; i++) {
				map.put(selectIds[i], statusIds[i]);
		}
		
		categoryService.updateAllStatus(map);
		return "redirect:pageList.action";
	}
		
	//批量删除
	@RequestMapping("/delAll")
	private String delAll(Integer[] selectIds) {
		
		categoryService.delAll(selectIds);
		return "redirect:pageList.action";
	}
}
