package co.edu.unbosque.controller;

import java.io.IOException;
import java.util.ArrayList;

import co.edu.unbosque.model.dtos.FlightDTO;
import co.edu.unbosque.model.dtos.FlightSearchDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FlightSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	FlightController flightController;

	public FlightSearchServlet() {
		flightController = new FlightController();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Buscar vuelo");

		FlightSearchDTO searchDTO = new FlightSearchDTO();

		searchDTO.setOrigin(request.getParameter("origin"));
		searchDTO.setDestiny(request.getParameter("destiny"));
		searchDTO.setDate(request.getParameter("date"));
		searchDTO.setNumberOfPassengers(request.getParameter("numberOfPassengers"));
		
		System.out.println("Origen: " + searchDTO.getOrigin());
	    System.out.println("Destino: " + searchDTO.getDestiny());
	    System.out.println("Fecha: " + searchDTO.getDate());
	    System.out.println("Número de pasajeros: " + searchDTO.getNumberOfPassengers());


		ArrayList<FlightDTO> matchingFlightsDTO = flightController.findFlights(searchDTO);

		request.setAttribute("matchingFlightsDTO", matchingFlightsDTO);

		request.getRequestDispatcher("/index.jsp?page=results").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
