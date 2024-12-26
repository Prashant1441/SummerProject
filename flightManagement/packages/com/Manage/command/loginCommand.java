package com.Manage.command;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class loginCommand {
	String loginName;
	String password;
	@NotEmpty(message="loginName filed is empty")
	
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	@NotEmpty(message="password filed is empty")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
