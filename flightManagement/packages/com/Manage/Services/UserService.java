package com.Manage.Services;

import java.util.List;

import com.Manage.Exception.UserBlockedException;
import com.Manage.domain.user;

public interface UserService {

	public static final Integer LOGIN_STATUS_ACTIVE=1;
	public static final Integer LOGIN_STATUS_BLOCKED=2;
	
	public static final Integer ROLE_ADMIN=1;
	public static final Integer ROLE_USER=2;
	

	/*
	 * this method handles the user registration task.
	 * the  new user detail as user object.
	 */
	public  void register(user u);
		// TODO Auto-generated method stub
		
	/*
	 the method handle login operation (authenticaion) using given
	 credential, it returns user object when success and null when failed.
	 throws excption when user account is blocked  by this method.
	 */
	public user login(String loginName, String password) throws UserBlockedException;
	
	/*
	 * call this method to get list of users.
	 */
	public List<user> getUserList();
	/*
	 * this method changes the user login status based 
	 * for details passed as arguments
	 */
	
	public void changeLoginStatus(Integer userId, Integer loginStatus);

}
