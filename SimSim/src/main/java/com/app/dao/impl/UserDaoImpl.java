package com.app.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
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
	Session session;

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

	public int countAll() {
		session = sessionFactory.getCurrentSession();
		String sql = "SELECT COUNT(*) FROM mainuser";
		SQLQuery query = session.createSQLQuery(sql);
		return Integer.parseInt(query.list().get(0).toString());
	}

	public int usernameIsExist(String username) {
		session = sessionFactory.getCurrentSession();
		String sql = "SELECT COUNT(*) FROM mainuser WHERE username =:username";
		SQLQuery query = session.createSQLQuery(sql);
		query.setParameter("username", username);
		return Integer.parseInt(query.list().get(0).toString());
	}

	public int emailIsExist(String email) {
		session = sessionFactory.getCurrentSession();
		String sql = "SELECT COUNT(*) FROM mainuser WHERE email =:email";
		SQLQuery query = session.createSQLQuery(sql);
		query.setParameter("email", email);
		return Integer.parseInt(query.list().get(0).toString());
	}

}