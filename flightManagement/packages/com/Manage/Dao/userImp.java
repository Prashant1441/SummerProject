package com.Manage.Dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.Manage.domain.user;
import com.Manage.rm.userRowMapper;




@Repository
public class userImp extends BaseDao implements userDao {

	@Override
	public void save(user u) {
		
		String sql="Insert into user(name ,phone ,address,email,password,loginName,loginStatus,role)"
				+ "VALUES(:name ,:phone ,:address,:email,:password,:loginName,:loginStatus,:role)";
		
		Map m= new HashMap();
		m.put("name", u.getName());
		m.put("phone", u.getPhone());
		m.put("address", u.getAddress());
		m.put("email", u.getEmail());
		m.put("password", u.getPassword());
		m.put("loginName", u.getLoginName());
		m.put("loginStatus", u.getLoginStatus());
		m.put("role", u.getRole());
		
		KeyHolder kh =new GeneratedKeyHolder();
		SqlParameterSource ps= new MapSqlParameterSource(m);
		super.getNamedParameterJdbcTemplate().update(sql, ps,kh);
		Integer userId=kh.getKey().intValue();
		u.setUserId(userId);
		
		}

	@Override
	public void update(user u) {
		String sql="UPDATE user"
				+" "
				+"SET name=:name,"
				+"phone=:phone,"
				+"address=:address,"
				+"email=:email,"
				+"role=:role,"
				+"loginStatus=:loginStatus"+
				" "
				+"WHERE UserID=:UserId";
		
	Map m= new HashMap();
	m.put("UserId",u.getUserId());
	m.put("name", u.getName());
	m.put("phone", u.getPhone());
	m.put("address", u.getAddress());
	m.put("email", u.getEmail());
	m.put("loginStatus", u.getLoginStatus());
	m.put("role", u.getRole());
	getNamedParameterJdbcTemplate().update(sql, m);
		
	}

	@Override
	public void delete(user u) {
		
		this.delete(u.getUserId()); 
		
	}

	@Override
	public void delete(Integer userId) {
		
		String sql="DELETE FROM USER WHERE UserId=?";
		getJdbcTemplate().update(sql,userId);
		
	}

	@Override
	public user findById(Integer userId) {
		
		String sql="SELECT UserId,name,phone,email,address,loginStatus,role,loginName"+" "+"FROM  user WHERE UserId=?";
		user u=getJdbcTemplate().queryForObject(sql,new userRowMapper(),userId);
		return u;
	}

	@Override
	public List<user> findAll() {
		String sql="SELECT userId,name,phone,email,address,loginStatus,role,loginName"+" "+"FROM  user";
		//List<user> ue=getJdbcTemplate().query(sql, new userRowMapper());
		return getJdbcTemplate().query(sql, new userRowMapper());
	}

	@Override
	public List<user> findByProperty(String propName, Object propvalue) {
		String sql="SELECT UserId,name,phone,email,address,loginStatus,role,loginName"+" "+"FROM  user WHERE "+""+propName+"=?";
		
		
		return getJdbcTemplate().query(sql, new userRowMapper(),propvalue);
	}
	
	
	
}
