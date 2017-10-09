package com.situ.mall.service.back;

import java.util.List;

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

	/**
	 * 查找状态为展示的广告图
	 * @return Banner
	 */
	Banner findBanner();

	/**
	 * 修改展示的状态
	 * @param id
	 * @return boolean
	 */
	boolean updateStatus(Banner banner);

	
}
