package com.Manage.domain;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

public class user {
	
	private Integer userId;
	@NotBlank(message="should not be emplty")
	@Pattern(regexp = "^[a-zA-Z]+$", message = "Only letters are allowed")
	 @Size(min = 4,max=10, message = "Name must be at least of 4 characters long")
	private String name; 
	

    @Digits(message="Number should contain 10 digits.", fraction = 0, integer = 10) 
    private String phone;
	@NotEmpty(message="Address filed is empty")
	 private String address;
	@NotEmpty(message="Email filed is empty")
	@Email(message="Incorrect Email field")
	private String email;
	@NotEmpty(message="loginName filed is empty")
	 @Size(min = 4,max=10, message = "loginName must be at least 4 characters long")
	@Pattern(regexp = "^[a-zA-Z]+$", message = "Only letters are allowed")
	private String loginName;
	@NotEmpty(message="password filed is empty")
	 @Size(min = 4,max=10, message = "Password must be at least 8 characters long")
	private String password;
	private Integer Role;
	private Integer loginStatus;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getRole() {
		return Role;
	}
	public void setRole(Integer role) {
		Role = role;
	}
	public Integer getLoginStatus() {
		return loginStatus;
	}
	public void setLoginStatus(Integer loginStatus) {
		this.loginStatus = loginStatus;
	}

}
