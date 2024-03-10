package co.edu.unbosque.model.dataMappers;

import co.edu.unbosque.model.dtos.BookingDTO;
import co.edu.unbosque.model.dtos.FlightDTO;
import co.edu.unbosque.model.entities.Booking;
import co.edu.unbosque.model.entities.Customer;
import co.edu.unbosque.model.entities.Flight;

public class BookingDataMapper {

	public BookingDTO entityToDTO(Booking booking) {
        Customer customer = booking.getCustomer();
        Flight flight = booking.getFlight();
        
        FlightDTO flightDTO = FlightDataMapper.entityToDTO(flight); // Asumiendo que tienes este método
        
        String id = booking.getId().toString();
        String firstName = customer.getFirstName();
        String lastName = customer.getLastName();
        String email = customer.getEmail();
        String seats = String.valueOf(booking.getSeats());
        String totalPrice = String.format("%.2f", booking.getTotalPrice());
        String isConfirmed = String.valueOf(booking.isConfirmed());
        String isCanceled = String.valueOf(booking.isCanceled());

        return new BookingDTO(id, firstName, lastName, email, seats, totalPrice, isConfirmed, isCanceled, flightDTO);
    }
	
	
}
