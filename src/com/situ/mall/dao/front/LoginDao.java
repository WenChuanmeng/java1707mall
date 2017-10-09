package com.situ.mall.dao.front;

import com.situ.mall.pojo.User;

public interface LoginDao {

	/**
	 * 检查用户名是否存在
	 * @param user
	 * @return User
	 */
	public User checkUser(User user);

}
