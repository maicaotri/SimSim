package com.app.dao.impl;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.BillDao;
import com.app.dao.CartBillDetailDao;
import com.app.model.entitymodel.Bill;
import com.app.model.entitymodel.CartBillDetail;
import com.app.model.entitymodel.MainUser;

@Repository
@Transactional
public class CartBillDetailDaoImpl implements CartBillDetailDao {
	@Autowired
	BillDao billDao;
	@Autowired
	SessionFactory sessionFactory;
	Session session;

	public void add(CartBillDetail n) {
		sessionFactory.getCurrentSession().save(n);
	}

	public void update(CartBillDetail n) {
		sessionFactory.getCurrentSession().merge(n);

	}

	public void delete(int id) {
		sessionFactory.getCurrentSession().delete(getById(id));

	}

	public CartBillDetail getById(int id) {
		return (CartBillDetail) sessionFactory.getCurrentSession().get(CartBillDetail.class, id);
	}

	public List<CartBillDetail> getAll() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(CartBillDetail.class);
		return criteria.list();
	}

	public List<CartBillDetail> findByUsername(String username, int page, int size) {
		session = sessionFactory.getCurrentSession();
		String sql = "SELECT * FROM cart_bill_detail WHERE username = :username";
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(CartBillDetail.class);
		query.setParameter("username", username);
		query.setFirstResult((page - 1) * size);
		query.setMaxResults(size);
		List<CartBillDetail> results = query.list();

		return results;
	}

	public List<CartBillDetail> findCartByUsername(String username, int page, int size) {
		session = sessionFactory.getCurrentSession();
		String sql = "SELECT * FROM cart_bill_detail WHERE username = :username AND `status` = 'READY' ";
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(CartBillDetail.class);
		query.setParameter("username", username);
		query.setFirstResult((page - 1) * size);
		query.setMaxResults(size);
		List<CartBillDetail> results = query.list();

		return results;
	}

	public List<CartBillDetail> findBillByUsername(String username, int page, int size) {
		session = sessionFactory.getCurrentSession();
		String sql = "SELECT * FROM cart_bill_detail WHERE username = :username AND `status` = 'ORDERED' ";
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(CartBillDetail.class);
		query.setParameter("username", username);
		query.setFirstResult((page - 1) * size);
		query.setMaxResults(size);
		List<CartBillDetail> results = query.list();

		return results;
	}

	public List<CartBillDetail> findCartByUsernameAndListSimId(String username, List<Integer> listId, int page,
			int size) {
		session = sessionFactory.getCurrentSession();
		String sql = "SELECT * FROM cart_bill_detail WHERE username = :username AND `status` = 'READY' ";
		StringBuilder findId = new StringBuilder("");
		if (listId != null) {
			findId.append(" AND id IN ( ");
			for (int i = 0; i < listId.size(); i++) {
				if (i == listId.size() - 1) {
					findId.append(listId.get(i));
					findId.append(" ) ");
				} else {
					findId.append(listId.get(i));
					findId.append(" , ");
				}
			}
		}
		sql += findId.toString();
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(CartBillDetail.class);
		query.setParameter("username", username);
		query.setFirstResult((page - 1) * size);
		query.setMaxResults(size);
		List<CartBillDetail> results = query.list();

		return results;
	}

	// ghi 3 phan khac nhau de han che so lan truy suat db va do phai dung lai phuong thuc tim roi dung vong lap, nhu vay mat tg hon
	public boolean payByUsernameAndListSimId(String username, List<Integer> listId, int page, int size) {
		session = sessionFactory.getCurrentSession();
		// get sum price of bill
		String sqlTotalPrice = "SELECT SUM(price) FROM cart_bill_detail WHERE username = :username AND `status` = 'READY' ";
		StringBuilder findId = new StringBuilder("");
		if (listId != null) {
			findId.append(" AND id IN ( ");
			for (int i = 0; i < listId.size(); i++) {
				if (i == listId.size() - 1) {
					findId.append(listId.get(i));
					findId.append(") ");
				} else {
					findId.append(listId.get(i));
					findId.append(" , ");
				}
			}
		}
		sqlTotalPrice += findId.toString();
		SQLQuery queryTotalPrice = session.createSQLQuery(sqlTotalPrice);
		queryTotalPrice.setParameter("username", username);

		// create new bill
		MainUser u = new MainUser();
		u.setUsername(username);
		Bill bill = new Bill();
		bill.setMainuser(u);
		bill.setDateCreate(Date.from(LocalDate.now().atStartOfDay().atZone(ZoneId.systemDefault()).toInstant()));
		bill.setStatus("ORDERED");
		bill.setPrice(Double.parseDouble(queryTotalPrice.list().get(0).toString()));
		billDao.add(bill);

		// update cart_bill_detail mix with bill
		StringBuilder sbSql = new StringBuilder("");
		sbSql.append("UPDATE cart_bill_detail SET `status` = 'ORDERED', ").append("billId= '").append(bill.getId())
				.append("' WHERE username = :username AND `status` = 'READY' ");
		if (listId != null) {
			sbSql.append(" AND id IN ( ");
			for (int i = 0; i < listId.size(); i++) {
				if (i == listId.size() - 1) {
					sbSql.append(listId.get(i));
					sbSql.append(" ) ");
				} else {
					sbSql.append(listId.get(i));
					sbSql.append(" , ");
				}
			}
		}

		String sql = sbSql.toString();
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(CartBillDetail.class);
		query.setParameter("username", username);
		query.setFirstResult((page - 1) * size);
		query.setMaxResults(size);
		query.executeUpdate();

		return true;
	}

}
