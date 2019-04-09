package com.app.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.CartBillDetailDao;
import com.app.model.entitymodel.CartBillDetail;
import com.app.service.CartBillDetailService;

@Service
@Transactional
public class CartBillDetailServiceImpl implements CartBillDetailService {
	@Autowired
	CartBillDetailDao cartBillDetailDao;

	public void add(CartBillDetail n) {
		cartBillDetailDao.add(n);
	}

	public void update(CartBillDetail n) {
		cartBillDetailDao.update(n);
	}

	public void delete(int id) {
		cartBillDetailDao.delete(id);
	}

	public CartBillDetail getById(int id) {
		return cartBillDetailDao.getById(id);
	}

	public List<CartBillDetail> getAll() {
		return cartBillDetailDao.getAll();
	}

	public List<CartBillDetail> findByUsername(String username, int page, int size) {
		return cartBillDetailDao.findByUsername(username, page, size);
	}

	public List<CartBillDetail> findCartByUsername(String username, int page, int size) {
		return cartBillDetailDao.findCartByUsername(username, page, size);
	}

	public List<CartBillDetail> findBillByUsername(String username, int page, int size) {
		return cartBillDetailDao.findBillByUsername(username, page, size);
	}

	public List<CartBillDetail> findBillByUsernameAndListSimId(String username, List<Integer> listSimId, int page,
			int size) {
		return cartBillDetailDao.findCartByUsernameAndListSimId(username, listSimId, page, size);
	}

	public boolean payByUsernameAndListSimId(String username, List<Integer> listId) {
		return cartBillDetailDao.payByUsernameAndListId(username, listId);
	}

}
