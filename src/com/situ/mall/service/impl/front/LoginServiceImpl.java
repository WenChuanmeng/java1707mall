package com.situ.mall.service.impl.front;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.front.LoginDao;
import com.situ.mall.pojo.User;
import com.situ.mall.service.front.ILoginService;

@Service
public class LoginServiceImpl implements ILoginService {

	@Autowired
	private LoginDao loginDao;
	
	@Override
	public User checkUser(User user) {
		
		return loginDao.checkUser(user);
	}

	
}
