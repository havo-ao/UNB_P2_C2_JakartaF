package co.edu.unbosque.model.entities;

public class Airline {

	String company, logo, id;

	public Airline(String id, String company, String logo) {
		this.company = company;
		this.logo = logo;
		this.id = id;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
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
