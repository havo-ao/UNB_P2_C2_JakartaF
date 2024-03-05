package co.edu.unbosque.model.dataMappers;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.Collectors;

import co.edu.unbosque.model.dtos.FlightDTO;
import co.edu.unbosque.model.entities.Flight;
import co.edu.unbosque.model.entities.Service;

public class FlightDataMapper {

	public FlightDataMapper() {

	}

	public FlightDTO flightEntityToDTO(Flight flight) {
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

		StringBuilder servicesStringBuilder = new StringBuilder();
		for (Service service : flight.getServicesIds()) {
			if (servicesStringBuilder.length() > 0) {
				servicesStringBuilder.append(", ");
			}
			servicesStringBuilder.append(service.getId());
		}
		flightDTO.setServicesIds(servicesStringBuilder.toString());

		flightDTO.setAircraftId(flight.getAircraftId());
		flightDTO.setAirlineId(flight.getAirlineId());

		return flightDTO;
	}

	public Flight flightDTOToEntity(FlightDTO flightDTO) {
		Flight flight = new Flight();

		flight.setId(flightDTO.getId());
		flight.setNumber(flightDTO.getNumber());
		flight.setOrigin(flightDTO.getOrigin());
		flight.setDestiny(flightDTO.getDestiny());
		flight.setAirlineFlightId(flightDTO.getAirlineFlightId());
		flight.setAvailableSeats(Integer.parseInt(flightDTO.getAvailableSeats()));
		flight.setPrice(Double.parseDouble(flightDTO.getPrice()));
		flight.setDate(LocalDate.parse(flightDTO.getDate()));
		flight.setTime(LocalTime.parse(flightDTO.getTime()));
		flight.setDepartureTime(flightDTO.getDepartureTime());
		flight.setLandingTime(flightDTO.getLandingTime());

		ArrayList<Service> services = (ArrayList<Service>) Arrays.stream(flightDTO.getServicesIds().split(", "))
				.map(id -> new Service(id, "ServiceName")).collect(Collectors.toList());
		flight.setServicesIds(services);

		flight.setAircraftId(flightDTO.getAircraftId());
		flight.setAirlineId(flightDTO.getAirlineId());

		return flight;
	}
}
