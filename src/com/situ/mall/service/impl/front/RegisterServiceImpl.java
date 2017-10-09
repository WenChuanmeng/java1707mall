package com.situ.mall.service.impl.front;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.situ.mall.dao.front.RegisterDao;
import com.situ.mall.pojo.User;
import com.situ.mall.service.front.IRegisterService;

@Service
public class RegisterServiceImpl implements IRegisterService {

	@Autowired
	private RegisterDao registerDao;

	@Override
	public boolean registerUser(User user) {
		int result = registerDao.registerUser(user);
		return result > 0 ? true : false;
	}

	@Override
	public boolean checkUsername(String username) {
		User user = registerDao.checkUsername(username);
		
		return user != null ? true : false;
	}
}
