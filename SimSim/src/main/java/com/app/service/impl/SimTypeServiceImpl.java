package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.SimTypeDao;
import com.app.model.entitymodel.SimType;
import com.app.service.SimTypeService;

@Service
@Transactional
public class SimTypeServiceImpl implements SimTypeService {
	@Autowired
	SimTypeDao simTypeDao;

	public void add(SimType n) {
		simTypeDao.add(n);
	}

	public void update(SimType n) {
		simTypeDao.update(n);
	}

	public void delete(int id) {
		simTypeDao.delete(id);
	}

	public SimType getById(int id) {
		return simTypeDao.getById(id);
	}

	public List<SimType> getAll() {
		return simTypeDao.getAll();
	}

}
