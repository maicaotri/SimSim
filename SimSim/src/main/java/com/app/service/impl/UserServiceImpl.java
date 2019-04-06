package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.UserDao;
import com.app.model.entitymodel.MainUser;
import com.app.service.UserService;

@Transactional
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;

	public void add(MainUser user) {
		userDao.add(user);
	}

	public void update(MainUser user) {
		userDao.add(user);
	}

	public void delete(String username) {
		userDao.delete(username);
	}

	public List<MainUser> getAll() {
		return userDao.getAll();
	}

	public MainUser getByUsername(String username) {
		return userDao.getByUsername(username);
	}

}
