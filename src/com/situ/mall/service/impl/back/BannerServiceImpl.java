package com.situ.mall.service.impl.back;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.back.BannerDao;
import com.situ.mall.pojo.Banner;
import com.situ.mall.service.back.IBannerService;
import com.situ.mall.vo.PageBean;

@Service
public class BannerServiceImpl implements IBannerService {
	
	@Autowired
	private BannerDao bannerDao;

	@Override
	public PageBean<Banner> pageList(Integer pageIndex, Integer pageSize) {

		PageBean<Banner> pageBean = new PageBean<Banner>();
		pageBean.setPageIndex(pageIndex);
		pageBean.setPageSize(pageSize);
		int totalSize = bannerDao.totalSize();
		int totalPage = (int) Math.ceil(1.0 * totalSize / pageSize);
		pageBean.setTotalSize(totalSize);
		pageBean.setTotalPage(totalPage);
		pageIndex = (pageIndex - 1) * pageSize;
		List<Banner> list = bannerDao.pageList(pageIndex, pageSize);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public boolean addBanner(Banner banner) {
		int result = bannerDao.addBanner(banner);
		return result > 0 ? true : false;
	}

	@Override
	public Banner findBanner() {
		
		return bannerDao.findBanner();
	}

	@Override
	public boolean updateStatus(Banner banner) {
		
		if (banner.getStatus() == 1) {
			banner.setStatus(2);
		} else if (banner.getStatus() == 2) {
			banner.setStatus(1);
		}
		int result = bannerDao.updateStatus(banner);
		return result > 0 ? true : false;
	}

}
