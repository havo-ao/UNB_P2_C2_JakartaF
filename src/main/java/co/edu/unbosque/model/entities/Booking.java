package co.edu.unbosque.model.entities;

public class Booking {

	String id, flightId;
	Customer customer;
	int seats;
	double totalPrice;
	boolean isCanceled = false;

	public Booking(String id, Customer customer, int seats, double totalPrice, boolean isCanceled,
			String flightId) {
		this.id = id;
		this.customer = customer;
		this.seats = seats;
		this.totalPrice = totalPrice;
		this.isCanceled = isCanceled;
		this.flightId = flightId;
	}

	public Booking() {

	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public int getSeats() {
		return seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public boolean isCanceled() {
		return isCanceled;
	}

	public void setCanceled(boolean isCanceled) {
		this.isCanceled = isCanceled;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFlightId() {
		return flightId;
	}

	public void setFlightId(String flightId) {
		this.flightId = flightId;
	}

}
