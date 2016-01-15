package com.bellinfo.service;

import com.bellinfo.helper.UserPojo;
import com.bellinfo.model.User;


public interface UserService {

	
	
	User findByUserName(String sso);

	boolean registerUser(UserPojo user);
	
}