package co.edu.unbosque.model.entities;

import java.time.LocalDate;

public class FlightSearch {
	private String origin;
	private String destiny;
	private LocalDate date;
	private int numberOfPassengers;

	public FlightSearch(String origin, String destiny, LocalDate date, int numberOfPassengers) {
		this.origin = origin;
		this.destiny = destiny;
		this.date = date;
		this.numberOfPassengers = numberOfPassengers;
	}

	public FlightSearch() {
	};

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

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public int getNumberOfPassengers() {
		return numberOfPassengers;
	}

	public void setNumberOfPassengers(int numberOfPassengers) {
		this.numberOfPassengers = numberOfPassengers;
	}
}
