package com.Manage.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Manage.Dao.BaseDao;
import com.Manage.Dao.flightDao;
import com.Manage.domain.flight;
import com.Manage.rm.flightRowMapper;
import com.Manage.util.StringUtility;

@Service
public class flightServiceImp extends BaseDao implements flightService{
	@Autowired
	private flightDao flightDao;
	@Override
	public void save(flight f) {
		flightDao.save(f);
		
		
	}

	@Override
	public void update(flight f) {
		flightDao.update(f);
	}

	@Override
	public void delete(Integer flightId) {
		flightDao.delete(flightId);
		
	}

	@Override
	public void delete(Integer[] flightIds) {
		String ids=StringUtility.toCommaSeperetedString(flightIds);
		String sql= "DELETE FROM flight_table WHERE flightId IN("+ids+")";
		getJdbcTemplate().update(sql);
		
	}

	@Override
	public List<flight> findUserFlight(Integer userId) {
		
		return flightDao.findByProperty("userid", userId);
	}

	@Override
	public List<flight> findUserFlight(Integer userId, String txt) {
		String sql="SELECT userId,destination,destinationTwo,Departure,timeIn,timeOut,freturn,flightStatus,traveler,flightId,flightType,flightClass"+" "+"FROM  flight_table WHERE userId=? AND(destination LIKE '%"+txt
				+"%' OR destinationTwo LIKE '%"+txt+"%' OR timeIN LIKE '%"+txt+"%' OR timeOut LIKE '%"+txt+"%' OR departure LIKE '%"+txt+"%')";
		//List<user> ue=getJdbcTemplate().query(sql, new userRowMapper());
		return getJdbcTemplate().query(sql, new flightRowMapper(),userId);
		
	}

	@Override
	public flight findByID(Integer flightId) {
		return flightDao.findById(flightId);
		
	}

	@Override
	public List<flight> findAll() {
		
		return flightDao.findAll();
	}

	@Override
	public List<flight> findAllBook( String txt,String txt2) {
		String sql="SELECT userId,destination,destinationTwo,Departure,timeIn,timeOut,freturn,flightStatus,traveler,flightId,flightType,flightClass"+" "+"FROM  flight_table WHERE(destination LIKE '%"+txt
				+"%' OR destinationTwo LIKE '%"+txt2+"%'   )AND userId = 1";
		
		return getJdbcTemplate().query(sql, new flightRowMapper());
	}
	

	@Override
	public flight findById(Integer flightId) {
		
		return flightDao.findById(flightId);
	}


}
