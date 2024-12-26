package com.Manage.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;

public class flight {
	private Integer flightId;
	private Integer userId;
	@NotNull(message="should not be emplty")
	private Integer flightStatus;
	@NotBlank(message="should not be emplty")
	@Pattern(regexp = "^[a-zA-Z]+$", message = "Only letters are allowed")
	private String destination;
	@NotBlank(message="should not be emplty")
	@Pattern(regexp = "^[a-zA-Z]+$", message = "Only letters are allowed")
	private String destinationTwo;
	@NotBlank(message="should not be emplty")
	private String timeIn;
	@NotBlank(message="should not be emplty")
	private String timeOut;
	@NotBlank(message="should not be emplty")
	private String departure;
	
	private String Freturn;
	
	private String flightClass;
	private Integer flightType;
	private Integer traveler;
	private Integer add;


	public Integer getAdd() {
		return add;
	}

	public void setAdd(Integer add) {
		this.add = add;
	}

	public Integer getTraveler() {
		return traveler;
	}

	public void setTraveler(Integer traveler) {
		this.traveler = traveler;
	}

	public Integer getFlightId() {
		return flightId;
	}

	public void setFlightId(Integer flightId) {
		this.flightId = flightId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public Integer getFlightType() {
		return flightType;
	}

	public String getTimeIn() {
		return timeIn;
	}

	public void setTimeIn(String timeIn) {
		this.timeIn = timeIn;
	}

	public void setFlightType(Integer flightType) {
		this.flightType = flightType;
	}

	public String getTimeOut() {
		return timeOut;
	}

	public void setTimeOut(String timeOut) {
		this.timeOut = timeOut;
	}

	public String getFreturn() {
		return Freturn;
	}

	public void setFreturn(String freturn) {
		this.Freturn = freturn;
	}

	public String getDestinationTwo() {
		return destinationTwo;
	}

	public void setDestinationTwo(String destinationTwo) {
		this.destinationTwo = destinationTwo;
	}

	public Integer getFlightStatus() {
		return flightStatus;
	}

	public void setFlightStatus(Integer flightStatus) {
		this.flightStatus = flightStatus;
	}

	public String getFlightClass() {
		return flightClass;
	}

	public void setFlightClass(String flightClass) {
		this.flightClass = flightClass;
	}

	public String getDeparture() {
		return departure;
	}

	public void setDeparture(String departure) {
		this.departure = departure;
	}

}