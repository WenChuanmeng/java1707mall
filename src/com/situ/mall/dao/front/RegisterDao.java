package com.situ.mall.dao.front;

import com.situ.mall.pojo.User;

public interface RegisterDao {

	/**
	 * 注册用户
	 * @param user
	 * @return int
	 */
	int registerUser(User user);

	/**
	 * 检测用户名是否存在
	 * @param username
	 * @return User
	 */
	User checkUsername(String username);

	
}
