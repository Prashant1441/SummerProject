package com.Manage.rm;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.Manage.domain.flight;

public class flightRowMapper implements RowMapper<flight> {

	@Override
	public flight mapRow(ResultSet rs, int rowNum) throws SQLException {
		flight f=new flight();
		f.setUserId(rs.getInt("userId"));
		f.setTimeIn(rs.getString("timeIn"));
		f.setDestination(rs.getString("destination"));
		f.setDestinationTwo(rs.getString("destinationTwo"));
		f.setDeparture(rs.getString("Departure"));
		f.setTimeOut(rs.getString("timeOut"));
		f.setFreturn(rs.getString("freturn"));
		f.setFlightId(rs.getInt("flightId"));
		f.setFlightStatus(rs.getInt("flightStatus"));
		f.setFlightType(rs.getInt("flightType"));
		f.setFlightClass(rs.getString("flightClass"));
		f.setTraveler(rs.getInt("traveler"));
		return f;
	}

}
