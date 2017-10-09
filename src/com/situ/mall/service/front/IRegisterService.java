package com.situ.mall.service.front;

import com.situ.mall.pojo.User;

public interface IRegisterService {

	/**
	 * 注册用户
	 * @param user
	 * @return boolean
	 */
	boolean registerUser(User user);

	/**
	 * 检测用户名是否存在
	 * @param username
	 * @return boolean
	 */
	boolean checkUsername(String username);

}
