package co.edu.unbosque.controller;

import java.util.ArrayList;

import co.edu.unbosque.model.daos.FlightDAOImpl;
import co.edu.unbosque.model.dataMappers.FlightDataMapper;
import co.edu.unbosque.model.dataMappers.FlightSearchMapper;
import co.edu.unbosque.model.dtos.FlightDTO;
import co.edu.unbosque.model.dtos.FlightSearchDTO;
import co.edu.unbosque.model.entities.Flight;

public class FlightController {
	private FlightDAOImpl flightDAO = new FlightDAOImpl();
	
	public ArrayList<FlightDTO> findFlights(FlightSearchDTO searchDTO) {
		ArrayList<FlightDTO> matchingFlightsDTO = new ArrayList<>();
		
		ArrayList<Flight> matchingFlights = flightDAO.findBySearch(FlightSearchMapper.dtoToEntity(searchDTO));

	    for (Flight flight : matchingFlights) {
	        matchingFlightsDTO.add(FlightDataMapper.entityToDTO(flight));
	    }

		return matchingFlightsDTO;
	}

}
