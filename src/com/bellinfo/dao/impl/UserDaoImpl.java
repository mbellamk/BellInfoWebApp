package com.bellinfo.dao.impl;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bellinfo.dao.UserDao;
import com.bellinfo.model.User;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	public User findByUserName(String username) {

		User user = (User) sessionFactory.getCurrentSession()
				.createCriteria(User.class)
				.add(Restrictions.eq("userName", username)).uniqueResult();
		return user;
	}

	@Override
	public boolean saveUser(User userObj) {
		try {
			
			sessionFactory.getCurrentSession().persist(userObj);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
