package com.situ.mall.service.front;

import com.situ.mall.pojo.Banner;

public interface IBannerService {

	/**
	 * 查找状态为展示的广告图
	 * @return Banner
	 */
	Banner findBanner();

}
