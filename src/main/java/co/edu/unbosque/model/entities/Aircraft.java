package co.edu.unbosque.model.entities;

public class Aircraft {

	String brand, aircraftModel, logo, id;

	public Aircraft(String id, String brand, String aircraftModel) {
		this.brand = brand;
		this.aircraftModel = aircraftModel;
	}

	public Aircraft(String id, String brand, String aircraftModel, String logo) {
		this.brand = brand;
		this.aircraftModel = aircraftModel;
		this.logo = logo;
		this.id = id;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getAircraftModel() {
		return aircraftModel;
	}

	public void setAircraftModel(String aircraftModel) {
		this.aircraftModel = aircraftModel;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
