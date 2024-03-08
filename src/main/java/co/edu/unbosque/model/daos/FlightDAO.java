package co.edu.unbosque.model.daos;

import java.util.ArrayList;

import co.edu.unbosque.model.entities.Flight;
import co.edu.unbosque.model.entities.FlightSearch;

public interface FlightDAO {
	ArrayList<Flight> findAll();

	Flight findById(String id);

	void save(Flight flight);

	void update(Flight flight);

	void deleteById(String id);

	ArrayList<Flight> findBySearch(FlightSearch flightSearch);
}
