package com.situ.mall.service.front;

import com.situ.mall.pojo.User;

public interface ILoginService {

	/**
	 * 检查用户名是否存在
	 * @param user
	 * @return User
	 */
	public User checkUser(User user);

}
