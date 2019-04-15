package com.app.service;

import java.util.List;

import com.app.model.entitymodel.MainUser;

public interface UserService {

	public void add(MainUser user);

	public void update(MainUser user);

	public void delete(String username);

	public List<MainUser> getAll();
	
	public MainUser getByUsername(String username);
	
	public int countAll();
}
