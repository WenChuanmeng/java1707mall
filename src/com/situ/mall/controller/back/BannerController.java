package com.situ.mall.controller.back;

import javax.jws.WebParam.Mode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.mall.pojo.Banner;
import com.situ.mall.service.back.IBannerService;
import com.situ.mall.vo.PageBean;

@Controller
@RequestMapping("banner")
public class BannerController {

	@Autowired
	private IBannerService bannerService;
	
	@RequestMapping("pageList")
	private String pageList(Integer pageIndex, Integer pageSize, Model model) {
		
		if (pageIndex == null) {
			pageIndex = 1;
		}
		
		pageSize = 3;
		
		PageBean<Banner> pageBean = bannerService.pageList(pageIndex, pageSize);
		model.addAttribute("pageBean", pageBean);
		return "banner_show";
	}
	
	//跳转到添加广告图界面
	@RequestMapping("toAddBanner")
	private String toAddBanner() {
		
		return "banner_add";
	}
	
	//添加广告图
	@RequestMapping("addBanner")
	private String addBanner(Banner banner) {
		
		bannerService.addBanner(banner);
		return "redirect:pageList.action";
	}
}
