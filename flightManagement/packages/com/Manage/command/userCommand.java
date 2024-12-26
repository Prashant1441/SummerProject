//package com.Manage.command;
//
//import org.hibernate.validator.constraints.NotBlank;
//import org.hibernate.validator.constraints.NotEmpty;
//
//import com.Manage.domain.user;
//
//import jakarta.validation.constraints.Email;
//import jakarta.validation.constraints.Pattern;
//import jakarta.validation.constraints.Size;
//
//public class userCommand {
//
//	 
//	 user u;
//	 
//  public user getU() { return u; }
// 
//	 public void setU(user u) { this.u = u; }
//	 
////	private Integer userId;
////	@NotEmpty(message = "Name is required")
////	private String name;
////	public Integer getUserId() {
////		return userId;
////	}
////
////	public void setUserId(Integer userId) {
////		this.userId = userId;
////	}
////
////	public String getName() {
////		return name;
////	}
////
////	public void setName(String name) {
////		this.name = name;
////	}
////
////	public String getPhone() {
////		return phone;
////	}
////
////	public void setPhone(String phone) {
////		this.phone = phone;
////	}
////
////	public String getAddress() {
////		return address;
////	}
////
////	public void setAddress(String address) {
////		this.address = address;
////	}
////
////	public String getEmail() {
////		return email;
////	}
////
////	public void setEmail(String email) {
////		this.email = email;
////	}
////
////	public String getLoginName() {
////		return loginName;
////	}
////
////	public void setLoginName(String loginName) {
////		this.loginName = loginName;
////	}
////
////	public String getPassword() {
////		return password;
////	}
////
////	public void setPassword(String password) {
////		this.password = password;
////	}
////
////	public Integer getRole() {
////		return Role;
////	}
////
////	public void setRole(Integer role) {
////		Role = role;
////	}
////
////	public Integer getLoginStatus() {
////		return loginStatus;
////	}
////
////	public void setLoginStatus(Integer loginStatus) {
////		this.loginStatus = loginStatus;
////	}
////
////	@NotBlank(message = "Enter your phoneNumber ")
////	@Pattern(regexp = "(^$|[0-9]{10})", message = "Phone number must be 10 digits")
////	private String phone;
////	@NotEmpty(message = "Address is required")
////	private String address;
////	@NotEmpty(message = "Email is required")
////	@Email(message = "Invalid email format")
////	private String email;
////	@NotEmpty(message = "Address is required")
////	private String loginName;
////	@Size(min = 6, message = "Password must be at least 6 characters long")
////	private String password;
////	private Integer Role;
////	private Integer loginStatus;
//
//}
