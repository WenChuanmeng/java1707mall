package com.situ.mall.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.situ.mall.pojo.Banner;

public interface BannerDao {

	/**
	 * 一共有多少广告图片组
	 * @return int
	 */
	int totalSize();

	/**
	 * 根据规定页数，分页查询
	 * @param pageIndex
	 * @param pageSize
	 * @return List<Banner>
	 */
	List<Banner> pageList(@Param("pageIndex")Integer pageIndex, @Param("pageSize")Integer pageSize);

	/**
	 * 添加广告图
	 * @param banner
	 * @return boolean
	 */
	int addBanner(Banner banner);

	/**
	 * 查找状态为展示的广告图
	 * @return Banner
	 */
	Banner findBanner();

	
}
