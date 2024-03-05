package co.edu.unbosque.model.entities;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;

public class Flight {

	String id, number, origin, destiny, airlineFlightId, departureTime, landingTime, aircraftId, airlineId;
	int availableSeats;
	double price;
	LocalDate date;
	LocalTime time;
	ArrayList<Service> servicesIds;

	public Flight(String id, String number, String origin, String destiny, String airlineFlightId, int availableSeats,
			double price, LocalDate date, LocalTime time, String departureTime, String landingTime,
			ArrayList<Service> servicesIds, String aircraftId, String airlineId) {
		this.id = id;
		this.number = number;
		this.origin = origin;
		this.destiny = destiny;
		this.airlineFlightId = airlineFlightId;
		this.availableSeats = availableSeats;
		this.price = price;
		this.date = date;
		this.time = time;
		this.departureTime = departureTime;
		this.landingTime = landingTime;
		this.servicesIds = servicesIds;
		this.aircraftId = aircraftId;
		this.airlineId = airlineId;
	}

	public Flight() {

	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getDestiny() {
		return destiny;
	}

	public void setDestiny(String destiny) {
		this.destiny = destiny;
	}

	public String getAirlineFlightId() {
		return airlineFlightId;
	}

	public void setAirlineFlightId(String airlineFlightId) {
		this.airlineFlightId = airlineFlightId;
	}

	public int getAvailableSeats() {
		return availableSeats;
	}

	public void setAvailableSeats(int availableSeats) {
		this.availableSeats = availableSeats;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public LocalTime getTime() {
		return time;
	}

	public void setTime(LocalTime time) {
		this.time = time;
	}

	public String getDepartureTime() {
		return departureTime;
	}

	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}

	public String getLandingTime() {
		return landingTime;
	}

	public void setLandingTime(String landingTime) {
		this.landingTime = landingTime;
	}

	public String getAircraftId() {
		return aircraftId;
	}

	public void setAircraftId(String aircraftId) {
		this.aircraftId = aircraftId;
	}

	public String getAirlineId() {
		return airlineId;
	}

	public void setAirlineId(String airlineId) {
		this.airlineId = airlineId;
	}

	public ArrayList<Service> getServicesIds() {
		return servicesIds;
	}

	public void setServicesIds(ArrayList<Service> servicesIds) {
		this.servicesIds = servicesIds;
	}

}
