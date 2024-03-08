package co.edu.unbosque.model.dataMappers;

import co.edu.unbosque.model.dtos.FlightSearchDTO;
import co.edu.unbosque.model.entities.FlightSearch;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class FlightSearchMapper {
	private static final DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

	public static FlightSearchDTO entityToDto(FlightSearch entity) {
		FlightSearchDTO dto = new FlightSearchDTO();

		dto.setOrigin(entity.getOrigin());
		dto.setDestiny(entity.getDestiny());
		dto.setDate(entity.getDate().format(dateFormatter));
		dto.setNumberOfPassengers(String.valueOf(entity.getNumberOfPassengers()));

		return dto;
	}

	public static FlightSearch dtoToEntity(FlightSearchDTO dto) {
		FlightSearch entity = new FlightSearch();

		entity.setOrigin(dto.getOrigin());
		entity.setDestiny(dto.getDestiny());
		
		String[] parts = dto.getDate().split("-");
	    
	    int day = Integer.parseInt(parts[0]);
	    int month = Integer.parseInt(parts[1]);
	    int year = Integer.parseInt(parts[2]);
	    
	    LocalDate date = LocalDate.of(year, month, day);
	    
	    entity.setDate(date);
		
		entity.setNumberOfPassengers(Integer.parseInt(dto.getNumberOfPassengers()));

		return entity;
	}
}
