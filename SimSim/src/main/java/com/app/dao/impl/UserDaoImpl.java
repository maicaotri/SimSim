package com.app.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.UserDao;
import com.app.model.entitymodel.MainUser;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {
	@Autowired
	SessionFactory sessionFactory;

	public void add(MainUser user) {
		sessionFactory.getCurrentSession().save(user);
	}

	public void update(MainUser user) {
		sessionFactory.getCurrentSession().merge(user);
	}

	public void delete(String username) {
		sessionFactory.getCurrentSession().delete(getByUsername(username));
	}

	public List<MainUser> getAll() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(MainUser.class);
		return criteria.list();
	}

	public MainUser getByUsername(String username) {
		return (MainUser) sessionFactory.getCurrentSession().get(MainUser.class, username);
	}

}