package co.edu.unbosque.model.entities;

public class Airline {

	String company, logo;

	public Airline(String company, String logo) {
		super();
		this.company = company;
		this.logo = logo;
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

}
