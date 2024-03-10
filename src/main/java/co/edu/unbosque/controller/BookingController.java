package co.edu.unbosque.controller;

import co.edu.unbosque.model.daos.BookingDAOImpl;
import co.edu.unbosque.model.daos.FlightDAOImpl;
import co.edu.unbosque.model.dataMappers.BookingDataMapper;
import co.edu.unbosque.model.dtos.BookingDTO;
import co.edu.unbosque.model.entities.Booking;
import co.edu.unbosque.model.entities.Flight;

public class BookingController {
	private FlightDAOImpl flightDAO = new FlightDAOImpl();
	private BookingDAOImpl bookingDAO = new BookingDAOImpl();

	public String createBooking(BookingDTO newBookingDTO) {
		Booking bookingCreated = BookingDataMapper.dtoToEntity(newBookingDTO);
		bookingDAO.save(bookingCreated);
		
		return bookingCreated.getId();
	}

	public BookingDTO getBookingById (String bookingId) {
		Booking bookingFound = bookingDAO.findById(bookingId);
		String flightId = bookingFound.getFlightId();
		Flight flight = flightDAO.findById(flightId);
		BookingDTO bookingFoundDTO = BookingDataMapper.entityToDTO(bookingFound, flight);
		return bookingFoundDTO;
	}

}
