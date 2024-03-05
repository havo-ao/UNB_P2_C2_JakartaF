package co.edu.unbosque.model.dtos;

public class BookingDTO {
	String id, firstName, lastName, email, seats, totalPrice, isConfirmed, isCanceled;
	FlightDTO flightDTO;

	public BookingDTO(String id, String firstName, String lastName, String email, String seats, String totalPrice,
			String isConfirmed, String isCanceled, FlightDTO flightDTO) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.seats = seats;
		this.totalPrice = totalPrice;
		this.isConfirmed = isConfirmed;
		this.isCanceled = isCanceled;
		this.flightDTO = flightDTO;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSeats() {
		return seats;
	}

	public void setSeats(String seats) {
		this.seats = seats;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getIsConfirmed() {
		return isConfirmed;
	}

	public void setIsConfirmed(String isConfirmed) {
		this.isConfirmed = isConfirmed;
	}

	public String getIsCanceled() {
		return isCanceled;
	}

	public void setIsCanceled(String isCanceled) {
		this.isCanceled = isCanceled;
	}

	public FlightDTO getFlightDTO() {
		return flightDTO;
	}

	public void setFlightDTO(FlightDTO flightDTO) {
		this.flightDTO = flightDTO;
	}

}
