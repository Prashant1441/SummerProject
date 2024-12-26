package com.Manage.rm;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.Manage.domain.user;

public class userRowMapper  implements RowMapper<user>{

	@Override
	public user mapRow(ResultSet rs, int rowNum) throws SQLException {
		
			user u =new user();
			u.setUserId(rs.getInt("userId"));
			u.setName(rs.getString("name"));
			u.setPhone(rs.getString("phone"));
			u.setAddress(rs.getString("address"));
			u.setEmail(rs.getString("email"));
			u.setLoginName(rs.getString("loginName"));
			u.setLoginStatus(rs.getInt("loginStatus"));
			u.setRole(rs.getInt("role"));
			
			return u;
			}



}
