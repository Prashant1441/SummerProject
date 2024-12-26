package com.Manage.Dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.Manage.domain.flight;
import com.Manage.rm.flightRowMapper;

@Repository
public class flightDaoImp extends BaseDao implements flightDao {

	@Override
	public void save(flight f) {
		String sql = "INSERT INTO flight_table (userId,destination,destinationTwo,timeIn,timeOut,flightStatus,flightType,flightClass,traveler,freturn,Departure)"
				+ " VALUES (:userId,:destination,:destinationTwo,:time,:timeOut,:flightStatus,:flightType,:flightClass,:traveler,:return,:departure)";
		Map m = new HashMap();
		m.put("flightStatus", f.getFlightStatus());
		m.put("flightClass", f.getFlightClass());
		m.put("destination", f.getDestination());
		m.put("time", f.getTimeIn());
		m.put("flightType", f.getFlightType());
		m.put("traveler", f.getTraveler());
		m.put("userId", f.getUserId());
		m.put("timeOut", f.getTimeOut());
		m.put("departure", f.getDeparture());
		m.put("return", f.getFreturn());
		m.put("destinationTwo", f.getDestinationTwo());

		KeyHolder kh = new GeneratedKeyHolder();
		SqlParameterSource ps = new MapSqlParameterSource(m);
		super.getNamedParameterJdbcTemplate().update(sql, ps, kh);
		Integer flightId = kh.getKey().intValue();
		f.setFlightId(flightId);
	}

	@Override
	public void update(flight f) {
		// TODO Auto-generated method stub
		String sql = "UPDATE flight_table" + " " + "SET destination=:destination,"

				+ "flightStatus=:flightStatus," + "flightType=:flightType," + "flightClass=:flightClass,"
				+ "destinationTwo=:destinationTwo," + "freturn=:freturn," + "departure=:departure,"
				+ "timeOut=:timeOut," + "timeIn=:timeIn," + "traveler=:traveler" + " " + "WHERE flightID=:flightId";

		Map m = new HashMap();
		m.put("flightId", f.getFlightId());
		m.put("destination", f.getDestination());
		m.put("flightStatus", f.getFlightStatus());
		m.put("flightType", f.getFlightType());
		m.put("timeIn", f.getTimeIn());
		m.put("flightClass", f.getFlightClass());
		m.put("departure", f.getDeparture());
		m.put("freturn", f.getFreturn());
		m.put("timeOut", f.getTimeOut());
		m.put("destinationTwo", f.getDestinationTwo());
		m.put("traveler", f.getTraveler());
		getNamedParameterJdbcTemplate().update(sql, m);

	}

	@Override
	public void delete(flight f) {
		// TODO Auto-generated method stub
		this.delete(f.getFlightId());

	}

	@Override
	public void delete(Integer flightId) {
		String sql = "DELETE FROM flight_TABLE WHERE flightId=?";
		getJdbcTemplate().update(sql, flightId);

	}

	@Override
	public flight findById(Integer flightId) {
		String sql = "SELECT userId,destination,destinationTwo,Departure,timeIn,timeOut,freturn,flightStatus,traveler,flightId,flightType,flightClass"
				+ " " + "FROM  flight_table WHERE flightId=?";
		flight u = getJdbcTemplate().queryForObject(sql, new flightRowMapper(), flightId);
		return u;
	}

	@Override
	public List<flight> findAll() {
		String sql = "SELECT userId,destination,destinationTwo,Departure,timeIn,timeOut,freturn,flightStatus,traveler,flightId,flightType,flightClass"
				+ " " + "FROM  flight_table";
		// List<user> ue=getJdbcTemplate().query(sql, new userRowMapper());
		return getJdbcTemplate().query(sql, new flightRowMapper());
	}

	@Override
	public List<flight> findByProperty(String propName, Object propvalue) {
		String sql = "SELECT userId,destination,destinationTwo,Departure,timeIn,timeOut,freturn,flightStatus,traveler,flightId,flightType,flightClass"
				+ " " + "FROM  flight_table" + " " + " WHERE " + " " + propName + "=?";

		return getJdbcTemplate().query(sql, new flightRowMapper(), propvalue);
	}

}
