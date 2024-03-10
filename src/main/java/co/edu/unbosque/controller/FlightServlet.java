package co.edu.unbosque.controller;

import java.io.IOException;
import java.util.ArrayList;

import co.edu.unbosque.model.dtos.BookingDTO;
import co.edu.unbosque.model.dtos.FlightDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	FlightController flightController;

    public FlightServlet() {
       this.flightController = new FlightController();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Mostrar listado de vuelos");
		
		ArrayList<FlightDTO> flightsDTO = flightController.getAllFlights();
		
		request.setAttribute("flights", flightsDTO);
		
		request.getRequestDispatcher("/index.jsp?page=flights").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
