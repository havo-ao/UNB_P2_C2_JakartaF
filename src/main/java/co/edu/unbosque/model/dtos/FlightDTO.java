package co.edu.unbosque.model.dtos;

public class FlightDTO {

	String id, number, origin, destiny, airlineFlightId, availableSeats, price, date, time, departureTime, landingTime,
			servicesIds, aircraftId, airlineId;

	public FlightDTO(String id, String number, String origin, String destiny, String airlineFlightId,
			String availableSeats, String price, String date, String time, String departureTime, String landingTime,
			String servicesIds, String aircraftId, String airlineId) {
		super();
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

	public FlightDTO() {

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

	public String getAvailableSeats() {
		return availableSeats;
	}

	public void setAvailableSeats(String availableSeats) {
		this.availableSeats = availableSeats;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
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

	public String getServicesIds() {
		return servicesIds;
	}

	public void setServicesIds(String servicesIds) {
		this.servicesIds = servicesIds;
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

}
