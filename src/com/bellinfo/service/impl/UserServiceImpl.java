package com.bellinfo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bellinfo.dao.UserDao;
import com.bellinfo.helper.BellInfoHelper;
import com.bellinfo.helper.UserPojo;
import com.bellinfo.model.User;
import com.bellinfo.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	public User findByUserName(String userName) {
		return userDao.findByUserName(userName);
	}

	@Override
	@Transactional
	public boolean registerUser(UserPojo user) {
		User userObj = BellInfoHelper.convertUserPojoToUserObj(user);

		return userDao.saveUser(userObj);
	}

}
