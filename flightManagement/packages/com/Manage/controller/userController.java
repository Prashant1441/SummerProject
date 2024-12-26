package com.Manage.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Manage.Exception.UserBlockedException;
import com.Manage.Services.UserService;
import com.Manage.Services.flightService;
import com.Manage.command.loginCommand;
import com.Manage.domain.flight;
import com.Manage.domain.user;








@Controller
public class userController {
	@Autowired
	private UserService userService;
	
	
	@RequestMapping(value= {"/" ,"/index"})
	public String home(Model m) {
	m.addAttribute("command", new loginCommand());
		return "index";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String handleLogin(@Valid@ModelAttribute("command") loginCommand cmd,BindingResult result, Model m,HttpSession session) {
if(result.hasErrors()) {
			
			return "index";
		}

		try {
			user loggedIn=userService.login(cmd.getLoginName(), cmd.getPassword());
			
			if(loggedIn==null) {
			
				m.addAttribute("err","enter the correct password");
				return "index";
			}
			else {
				if(loggedIn.getRole().equals(UserService.ROLE_ADMIN)) {
					addUserInSession(loggedIn,session);
					return "redirect:/admin/dashboard";
					
				}
				else if(loggedIn.getRole().equals(UserService.ROLE_USER)) {
					addUserInSession(loggedIn,session);
					return "redirect:/user/dashboard";
				}
				else {
					m.addAttribute("err","invalid role");
					return "index";
					
				}
			}
		} catch (UserBlockedException e) {
		
			m.addAttribute("err", e.getMessage());
			e.printStackTrace();
			return "index";
		}
		
	}
	
		
	@RequestMapping("/user/dashboard")
	public String userdash(Model m) {
		m.addAttribute("command", new flight());


		return "user_dashboard";
	}
	
	@RequestMapping("/about")
	public String about(Model m) {
		
		return "about";
	}
	
	@RequestMapping("/admin/dashboard")
	public String admindash() {
		return "admin_dashboard";				
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index?act=lo";				
	}

	
	@RequestMapping("/row")
	public String row(HttpSession session) {
		session.invalidate();
		return "example";				
	}
	@GetMapping(value={"/regx"})
	public String regs(Model m) {
		
		  user cmd= new user();
		
		  m.addAttribute("command", cmd);

		return "regForm";
		
	}
	
	
	
	@RequestMapping("/contact")
	public String New() {
		
		return "contact";
		
	}
	
	@RequestMapping("/message")
	public String sendMesage(Model m) {

		return "redirect:index?act=send";
		
	}

	private void addUserInSession(user u,HttpSession session) {
		session.setAttribute("user", u);
		session.setAttribute("userId", u.getUserId());
		session.setAttribute("role", u.getRole());
	}
	
	@RequestMapping(value= {"/users"})
	public String addUser(Model m) {
		m.addAttribute("users", userService.getUserList());
		return "users";
	}
	
	@RequestMapping(value= {"/achangeStatus"})
	@ResponseBody
	public String changeLoginStatus(@RequestParam Integer userId,@RequestParam Integer loginStatus) {
		try {
		userService.changeLoginStatus(userId, loginStatus);
		return "success:Status changed";
	}
		catch(Exception e) {
			e.printStackTrace();
			return "Error:unable to change status";
			
		}
		}
	
	@PostMapping(value= {"/regForm"})
		public String userRegister(@Valid @ModelAttribute("command") user user,BindingResult result,Model m) {
		if(result.hasErrors()) {
			
			return "regForm";
		}
		try {
			
			user.setRole(userService.ROLE_USER);
			user.setLoginStatus(userService.LOGIN_STATUS_ACTIVE);
			
			
			userService.register(user);
			return "redirect:index?act=REG";
			}
			catch( DuplicateKeyException e) {
				e.printStackTrace();
				m.addAttribute("err","same login name use different");
				return "regForm";
			}
		
		
	}
	
	

	
	
}
	
	
	