package co.edu.unbosque.model.entities;

public class Service {

	String name;
	String id;
	
	public Service(String id) {
		this.id = id;
	}

	public Service(String id, String name) {
		this.id = id;
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	

}
