package com.situ.mall.service.back;

import com.situ.mall.pojo.Banner;
import com.situ.mall.vo.PageBean;

public interface IBannerService {

	/**
	 * 查询广告图片并进行分页
	 * @param pageIndex
	 * @param pageSize
	 * @return PageBean<Banner>
	 */
	PageBean<Banner> pageList(Integer pageIndex, Integer pageSize);

	/**
	 * 添加广告图
	 * @param banner
	 * @return boolean
	 */
	boolean addBanner(Banner banner);

	
}
