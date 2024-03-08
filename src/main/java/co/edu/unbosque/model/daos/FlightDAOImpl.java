package co.edu.unbosque.model.daos;

import java.util.ArrayList;

import co.edu.unbosque.model.dataSource.DataSource;
import co.edu.unbosque.model.entities.Flight;
import co.edu.unbosque.model.entities.FlightSearch;

public class FlightDAOImpl implements FlightDAO {
	
    @Override
    public ArrayList<Flight> findAll() {
        return DataSource.flights;
    }

    @Override
    public Flight findById(String id) {
        return DataSource.flights.stream()
                .filter(flight -> flight.getId().equals(id))
                .findFirst()
                .orElse(null);
    }

    @Override
    public void save(Flight flight) {
        DataSource.flights.add(flight);
    }

    @Override
    public void update(Flight flight) {
        int index = DataSource.flights.indexOf(flight);
        if (index != -1) {
            DataSource.flights.set(index, flight);
        }
    }

    @Override
    public void deleteById(String id) {
        DataSource.flights.removeIf(flight -> flight.getId().equals(id));
    }

	@Override
	public ArrayList<Flight> findBySearch(FlightSearch flightSearch) {
		ArrayList<Flight> matchingFlights = new ArrayList<>();
		
		for (Flight flight : DataSource.flights) {
			if (flightMatchesCriteria(flight, flightSearch)) {
				matchingFlights.add(flight);
			}
		}

		return matchingFlights;
	}
	
	private static boolean flightMatchesCriteria(Flight flight, FlightSearch search) {
		if (!flight.getOrigin().equals(search.getOrigin())) {
			return false;
		}

		if (!flight.getDestiny().equals(search.getDestiny())) {
			return false;
		}

		if (!flight.getDate().equals(search.getDate())) {
			return false;
		}

		if (flight.getAvailableSeats() < search.getNumberOfPassengers()) {
			return false;
		}

		return true;
	}
    
    
}
