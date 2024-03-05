package co.edu.unbosque.model.entities;

import java.util.UUID;

public class Booking {

	UUID id;
	Customer customer;
	Flight flight;
	int seats;
	double totalPrice;
	boolean isConfirmed = false;
	boolean isCanceled = false;

	public Booking(UUID id, Customer customer, Flight flight, int seats, double totalPrice, boolean isConfirmed,
			boolean isCanceled) {
		this.id = id;
		this.customer = customer;
		this.flight = flight;
		this.seats = seats;
		this.totalPrice = totalPrice;
		this.isConfirmed = isConfirmed;
		this.isCanceled = isCanceled;
	}

	public UUID getId() {
		return id;
	}

	public void setId(UUID id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Flight getFlight() {
		return flight;
	}

	public void setFlight(Flight flight) {
		this.flight = flight;
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

	public boolean isConfirmed() {
		return isConfirmed;
	}

	public void setConfirmed(boolean isConfirmed) {
		this.isConfirmed = isConfirmed;
	}

	public boolean isCanceled() {
		return isCanceled;
	}

	public void setCanceled(boolean isCanceled) {
		this.isCanceled = isCanceled;
	}

}
