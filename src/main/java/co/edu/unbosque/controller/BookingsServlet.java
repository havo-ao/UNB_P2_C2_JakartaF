package co.edu.unbosque.controller;

import java.io.IOException;
import java.util.ArrayList;

import co.edu.unbosque.model.dtos.BookingDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BookingsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookingController bookingController;

    public BookingsServlet() {
    	this.bookingController = new BookingController();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Mostrar Reservas");
		
		ArrayList<BookingDTO> bookingsDTO = bookingController.getAllBookings();
		
		request.setAttribute("bookings", bookingsDTO);
		
		request.getRequestDispatcher("/index.jsp?page=bookings").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Cancelar Reserva");
		
		String bookingId = request.getParameter("bookingId");
		
		bookingController.cancelBookingById(bookingId);
		
		ArrayList<BookingDTO> bookingsDTO = bookingController.getAllBookings();
		
		request.setAttribute("bookings", bookingsDTO);
		
		request.getRequestDispatcher("/index.jsp?page=bookings").forward(request, response);
	}

}
