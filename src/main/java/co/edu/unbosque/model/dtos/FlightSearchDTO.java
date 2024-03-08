package co.edu.unbosque.model.dtos;

public class FlightSearchDTO {
	private String origin;
	private String destiny;
	private String date;
	private String numberOfPassengers;

	public FlightSearchDTO(String origin, String destiny, String date, String numberOfPassengers) {
		this.origin = origin;
		this.destiny = destiny;
		this.date = date;
		this.numberOfPassengers = numberOfPassengers;
	}

	public FlightSearchDTO() {

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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getNumberOfPassengers() {
		return numberOfPassengers;
	}

	public void setNumberOfPassengers(String numberOfPassengers) {
		this.numberOfPassengers = numberOfPassengers;
	}

}
