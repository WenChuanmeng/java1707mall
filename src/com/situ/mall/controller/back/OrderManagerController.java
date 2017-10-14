package com.situ.mall.controller.back;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.mall.common.ServerResponse;
import com.situ.mall.pojo.Order;
import com.situ.mall.service.back.IOrderManagerService;
import com.situ.mall.vo.PageBean;

@Controller
@RequestMapping("orderManager")
public class OrderManagerController {

	@Autowired
	private IOrderManagerService orderManagerService;
	@RequestMapping("pageList")
	private String pageList(Integer pageIndex, Integer pageSize, Model mode) {
		
		if (pageIndex == null) {
			pageIndex = 1;
		}
		pageSize = 5;
		PageBean<Order> pageBean = orderManagerService.pageList(pageIndex, pageSize);
		mode.addAttribute("pageBean", pageBean);
		return "order_show";
	}
}
