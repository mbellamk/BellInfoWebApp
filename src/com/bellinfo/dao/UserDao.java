package com.bellinfo.dao;

import com.bellinfo.model.User;

public interface UserDao {

	
	User findByUserName(String sso);

	boolean saveUser(User userObj);
	
}

