package com.bellinfo.helper;

import com.bellinfo.model.User;

public class BellInfoHelper {

	public static User convertUserPojoToUserObj(UserPojo user) {
		
		User userObj=new User();
		userObj.setFirstName(user.getFirstName());
		userObj.setLastName(user.getLastName());
		userObj.setEmail(user.getEmail());
		userObj.setPhoneNumber(user.getPhoneNumber());
		userObj.setUserName(user.getUserName());
		userObj.setPassword(user.getPassword());
		userObj.setRole("ROLE_USER");
		userObj.setActive(true);
		return userObj;
	}

}
