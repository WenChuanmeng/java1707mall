package com.situ.mall.dao.front;

import com.situ.mall.pojo.Banner;

public interface BannerFrontDao {

	/**
	 * 查找状态为展示的广告图
	 * @return Banner
	 */
	Banner findBanner();

	
}
