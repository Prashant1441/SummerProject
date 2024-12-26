package com.Manage.Services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.Manage.Dao.BaseDao;
import com.Manage.Dao.userDao;
import com.Manage.Exception.UserBlockedException;
import com.Manage.domain.user;
import com.Manage.rm.userRowMapper;


@Service
public class UserServicesImp extends BaseDao implements UserService {
	@Autowired
	private userDao uDao;

	@Override
	public void register(user u) {
		uDao.save(u);
		
	}

	@Override
	public user login(String loginName, String password) throws UserBlockedException {
		String sql="SELECT userId,name,address,phone,email,loginStatus,Role,loginName"+
				" FROM user WHERE loginName= :ln AND password= :pw";
		
		
		Map m=new HashMap();
		m.put("ln",loginName);
		m.put("pw",password);
		try {
			user u=getNamedParameterJdbcTemplate().queryForObject(sql, m, new userRowMapper());
			
			if(u.getLoginStatus().equals(UserService.LOGIN_STATUS_BLOCKED)) {
				throw new UserBlockedException
				("your account has been blocked.Contact with Admin for login");
				
			}
			else {
				return u;
			}
		}
		catch(EmptyResultDataAccessException ex) {
			
			return null;
		}
		
		
	}

	@Override
	public List<user> getUserList() {
		return uDao.findByProperty("role", UserService.ROLE_USER);
		
	}

	@Override
	public void changeLoginStatus(Integer userId, Integer loginStatus) {
	String sql="Update user SET loginStatus=:lst WHERE userId=:uId";
	Map m=new HashMap();
	m.put("lst",loginStatus);
	m.put("uId",userId);
	
	getNamedParameterJdbcTemplate().update(sql, m);

		
	}


}
