package co.edu.unbosque.controller;

import java.io.IOException;

import co.edu.unbosque.model.dtos.BookingDTO;
import co.edu.unbosque.model.functions.BookingTool;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookingController bookingController;

	public BookingServlet() {
		this.bookingController = new BookingController();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Booking Recibido:" + request.getParameter("bookingId"));
		
		String bookingId = request.getParameter("bookingId");
		
		BookingDTO bookingDTO = bookingController.getBookingById(bookingId);
		
		request.setAttribute("booking", bookingDTO);
		
		request.getRequestDispatcher("/index.jsp?page=booking").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Crear Reserva");

		BookingDTO newBooking = new BookingDTO();

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String seats = request.getParameter("seats");
		String totalPrice = request.getParameter("totalPrice");
		String flightId = request.getParameter("flightId");

		newBooking.setId(BookingTool.generateId());
		newBooking.setFirstName(firstName);
		newBooking.setLastName(lastName);
		newBooking.setEmail(email);
		newBooking.setSeats(seats);
		newBooking.setTotalPrice(totalPrice);
		newBooking.setFlightId(flightId);

		String bookingId = bookingController.createBooking(newBooking);
		
		BookingDTO bookingDTO = bookingController.getBookingById(bookingId);
		
		request.setAttribute("booking", bookingDTO);
		
		System.out.println("Reserva con ID: " + bookingId + " creada");

		request.getRequestDispatcher("/index.jsp?page=booking").forward(request, response);
	}

}
