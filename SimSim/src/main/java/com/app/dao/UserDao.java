package com.app.dao;

import java.util.List;

import com.app.model.entitymodel.MainUser;

public interface UserDao {
	
	public void add(MainUser user);

	public void update(MainUser user);

	public void delete(String username);

	public MainUser getByUsername(String username);

	public List<MainUser> getAll();
}