package co.edu.unbosque.model.entities;

public class City {
	String id, name, airport;

	public City(String id, String name, String airport) {
		this.id = id;
		this.name = name;
		this.airport = airport;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAirport() {
		return airport;
	}

	public void setAirport(String airport) {
		this.airport = airport;
	}

}
