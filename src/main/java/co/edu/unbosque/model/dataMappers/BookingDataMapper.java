package co.edu.unbosque.model.dataMappers;

import co.edu.unbosque.model.dtos.BookingDTO;
import co.edu.unbosque.model.dtos.FlightDTO;
import co.edu.unbosque.model.entities.Booking;
import co.edu.unbosque.model.entities.Customer;
import co.edu.unbosque.model.entities.Flight;

public class BookingDataMapper {

	public static BookingDTO entityToDTO(Booking booking, Flight flight) {
		Customer customer = booking.getCustomer();
		BookingDTO bookingDTO = new BookingDTO();
		
		bookingDTO.setId(booking.getId());
		bookingDTO.setFirstName(customer.getFirstName());
		bookingDTO.setLastName(customer.getLastName());
		bookingDTO.setEmail(customer.getEmail());
		bookingDTO.setSeats(String.valueOf(booking.getSeats()));
		bookingDTO.setTotalPrice(String.format("%.2f", booking.getTotalPrice()));
		bookingDTO.setIsCanceled(String.valueOf(booking.isCanceled()));
		bookingDTO.setFlightDTO(FlightDataMapper.entityToDTO(flight));

		return bookingDTO;
	}

	public static Booking dtoToEntity(BookingDTO bookingDTO) {
		Customer customer = new Customer();
	    customer.setFirstName(bookingDTO.getFirstName());
	    customer.setLastName(bookingDTO.getLastName());
	    customer.setEmail(bookingDTO.getEmail());

	    Booking newBooking = new Booking();
	    newBooking.setId(bookingDTO.getId());
	    newBooking.setCustomer(customer);
	    newBooking.setSeats(Integer.parseInt(bookingDTO.getSeats()));
	    newBooking.setTotalPrice(Double.parseDouble(bookingDTO.getTotalPrice()));
	    newBooking.setFlightId(bookingDTO.getFlightId());

	    return newBooking;

	}

}
