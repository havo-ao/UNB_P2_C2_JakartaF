package co.edu.unbosque.model.dataMappers;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.Collectors;

import co.edu.unbosque.model.dataSource.DataSource;
import co.edu.unbosque.model.dtos.FlightDTO;
import co.edu.unbosque.model.entities.Aircraft;
import co.edu.unbosque.model.entities.Airline;
import co.edu.unbosque.model.entities.Flight;
import co.edu.unbosque.model.entities.Service;

public class FlightDataMapper {

	public FlightDataMapper() {

	}

	public static FlightDTO entityToDTO(Flight flight) {
		FlightDTO flightDTO = new FlightDTO();

		flightDTO.setId(flight.getId());
		flightDTO.setNumber(flight.getNumber());
		flightDTO.setOrigin(flight.getOrigin());
		flightDTO.setDestiny(flight.getDestiny());
		flightDTO.setAirlineFlightId(flight.getAirlineFlightId());
		flightDTO.setAvailableSeats(String.valueOf(flight.getAvailableSeats()));
		flightDTO.setPrice(String.valueOf(flight.getPrice()));
		flightDTO.setDate(flight.getDate().toString());
		flightDTO.setTime(flight.getTime().toString());
		flightDTO.setDepartureTime(flight.getDepartureTime());
		flightDTO.setLandingTime(flight.getLandingTime());

		//Devolver servicios

		Aircraft aircraft = findAircraftById(flight.getAircraftId());
		flightDTO.setAircraft(aircraft);

		Airline airline = findAirlineById(flight.getAirlineId());
		flightDTO.setAirline(airline);

		return flightDTO;
	}

	public static Flight dtoToEntity(FlightDTO flightDTO) {
		Flight flight = new Flight();

		flight.setId(flightDTO.getId());
		flight.setNumber(flightDTO.getNumber());
		flight.setOrigin(flightDTO.getOrigin());
		flight.setDestiny(flightDTO.getDestiny());
		flight.setAirlineFlightId(flightDTO.getAirlineFlightId());
		flight.setAvailableSeats(Integer.parseInt(flightDTO.getAvailableSeats()));
		flight.setPrice(Double.parseDouble(flightDTO.getPrice()));

		String[] parts = flightDTO.getDate().split("-");
		int day = Integer.parseInt(parts[0]);
		int month = Integer.parseInt(parts[1]);
		int year = Integer.parseInt(parts[2]);
		LocalDate date = LocalDate.of(year, month, day);
		flight.setDate(date);

		flight.setTime(flightDTO.getTime());
		flight.setDepartureTime(flightDTO.getDepartureTime());
		flight.setLandingTime(flightDTO.getLandingTime());

		ArrayList<Service> services = (ArrayList<Service>) Arrays.stream(flightDTO.getServicesIds().split(", "))
				.map(id -> new Service(id, "ServiceName")).collect(Collectors.toList());
		flight.setServicesIds(services);

		flight.setAircraftId(flightDTO.getAircraftId());
		flight.setAirlineId(flightDTO.getAirlineId());

		return flight;
	}

	private static Aircraft findAircraftById(String aircraftId) {
		for (Aircraft aircraft : DataSource.aircrafts) {
			if (aircraft.getId().equals(aircraftId)) {
				return aircraft;
			}
		}
		return null;
	}

	private static Airline findAirlineById(String airlineId) {
		for (Airline airline : DataSource.airlines) {
			if (airline.getId().equals(airlineId)) {
				return airline;
			}
		}
		return null;
	}
}
