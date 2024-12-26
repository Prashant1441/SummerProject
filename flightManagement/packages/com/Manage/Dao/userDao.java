package com.Manage.Dao;

import java.util.List;

import com.Manage.domain.user;


public interface userDao {

	public void save(user u);
	 public void update(user u);
	 public void delete(user u);
	 public void delete(Integer userId);
	 public user findById(Integer userId);
	 public List<user> findAll();
	 public List<user> findByProperty(String propName,Object propvalue);
}
