package com.Manage.Dao;

import java.util.List;

import com.Manage.domain.flight;


public interface flightDao {

		 public void save(flight f);
		 public void update(flight f);
		 public void delete(flight f);
		 public void delete(Integer flightId);
		 public flight findById(Integer flightId);
		 public List<flight> findAll();
		 
		 public List<flight> findByProperty(String propName,Object propvalue);

	

}
