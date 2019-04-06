package com.app.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.BillDao;
import com.app.model.entitymodel.Bill;

@Repository
public class BillDaoImpl implements BillDao {
	@Autowired
	SessionFactory sessionFactory;

	public void add(Bill n) {
		sessionFactory.getCurrentSession().save(n);
	}

	public void update(Bill n) {
		sessionFactory.getCurrentSession().merge(n);
	}

	public void delete(int id) {
		sessionFactory.getCurrentSession().delete(getById(id));
	}

	public Bill getById(int id) {
		return (Bill) sessionFactory.getCurrentSession().get(Bill.class, id);
	}

	public List<Bill> getAll() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Bill.class);
		return criteria.list();
	}

}
