package com.Manage.Services;

import java.util.List;

import com.Manage.domain.flight;

public interface flightService  {
	
	public void save(flight f);
	public void update(flight f);
	public void delete(Integer flightId);
	public void delete(Integer[] flightIds);
	/*
	 * 
	 * this returns all user contact (user who is logged in).
	 */
	public List<flight> findUserFlight(Integer userId);
	
	/*
	 * the method search contact for user(userId) based on given
	 * free text criteria(txt).
	 */
	public List<flight> findUserFlight(Integer userId, String txt);
	
	public flight findByID(Integer flightId);
	
	public List<flight> findAll();
	
	public List<flight> findAllBook(String txt,String txt2);
	public flight findById(Integer flightId);
	
}
