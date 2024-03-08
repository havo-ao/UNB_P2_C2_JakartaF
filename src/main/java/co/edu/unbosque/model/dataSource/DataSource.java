package co.edu.unbosque.model.dataSource;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Random;
import java.util.UUID;

import co.edu.unbosque.model.entities.Aircraft;
import co.edu.unbosque.model.entities.Airline;
import co.edu.unbosque.model.entities.Booking;
import co.edu.unbosque.model.entities.City;
import co.edu.unbosque.model.entities.Flight;
import co.edu.unbosque.model.entities.Service;

public class DataSource {

	public static ArrayList<Flight> flights = new ArrayList<>();
	public static ArrayList<Booking> bookings = new ArrayList<>();
	public static ArrayList<Airline> airlines = new ArrayList<>();
	public static ArrayList<Aircraft> aircrafts = new ArrayList<>();
	public static ArrayList<Service> services = new ArrayList<>();
	public static ArrayList<City> cities = new ArrayList<>();

	public static void addDefaultFlights() {
		LocalDate today = LocalDate.now();
		LocalDate tomorrow = today.plusDays(1);

		// Vuelo de Bogotá a San Andrés
		Flight bogToSanAndres = new Flight(UUID.randomUUID().toString(), "FL101", "BOG", "ADZ", "SAN101", 180, 250000,
				today, "3:30", "09:00", "11:00", getRandomServices(), getRandomAircraft().getId(),
				getRandomAirline().getId());
		flights.add(bogToSanAndres);

		// Vuelo de Medellín a Dubái
		Flight medToDubai = new Flight(UUID.randomUUID().toString(), "FL202", "MDE", "DXB", "DUB202", 220, 700000,
				today, "8:45", "14:00", "20:45", getRandomServices(), getRandomAircraft().getId(),
				getRandomAirline().getId());
		flights.add(medToDubai);

		// Vuelo de Buenos Aires a Londres
		Flight buenosAiresToLondon = new Flight(UUID.randomUUID().toString(), "FL303", "EZE", "LHR", "BAW303", 230,
				900000, tomorrow, "16:20", "22:30", "06:50", getRandomServices(), getRandomAircraft().getId(),
				getRandomAirline().getId());
		flights.add(buenosAiresToLondon);

		// Vuelo de Río de Janeiro a Estambul
		Flight rioToIstanbul = new Flight(UUID.randomUUID().toString(), "FL404", "GIG", "IST", "TK404", 200, 800000,
				tomorrow, "12:15", "18:30", "01:45", getRandomServices(), getRandomAircraft().getId(),
				getRandomAirline().getId());
		flights.add(rioToIstanbul);
	}

	public static void addDefaultCities() {
		City bogota = new City("BOG", "Bogotá", "Aeropuerto Internacional El Dorado");
		cities.add(bogota);
		City sanAndres = new City("ADZ", "San Andrés", "Aeropuerto Internacional Gustavo Rojas Pinilla");
		cities.add(sanAndres);
		City medellin = new City("MDE", "Medellín", "Aeropuerto Internacional José María Córdova");
		cities.add(medellin);
		City dubai = new City("DXB", "Dubái", "Aeropuerto Internacional de Dubái");
		cities.add(dubai);
		City estambul = new City("IST", "Estambul", "Aeropuerto Internacional de Estambul");
		cities.add(estambul);

	}

	public static void addDefaultAirlines() {
		Airline turkishAirlines = new Airline("TURKISH", "Turkish Airlines", "turkish-airlines.png");
		airlines.add(turkishAirlines);

		Airline delta = new Airline("DELTA", "Delta", "delta.png");
		airlines.add(delta);

		Airline avianca = new Airline("AVIANCA", "Avianca", "avianca.png");
		airlines.add(avianca);

		Airline emirates = new Airline("EMIRATES", "Emirates", "emirates.png");
		airlines.add(emirates);

		Airline iberia = new Airline("IBERIA", "Iberia", "iberia.png");
		airlines.add(iberia);
	}

	public static void addDefaultAircrafts() {
		// Boeing
		Aircraft boeing1 = new Aircraft(UUID.randomUUID().toString(), "Boeing", "747", "boeing_logo.png");
		aircrafts.add(boeing1);
		Aircraft boeing2 = new Aircraft(UUID.randomUUID().toString(), "Boeing", "787", "boeing_logo.png");
		aircrafts.add(boeing2);
		Aircraft boeing3 = new Aircraft(UUID.randomUUID().toString(), "Boeing", "737", "boeing_logo.png");
		aircrafts.add(boeing3);

		// Airbus
		Aircraft airbus1 = new Aircraft(UUID.randomUUID().toString(), "Airbus", "A380", "airbus_logo.png");
		aircrafts.add(airbus1);
		Aircraft airbus2 = new Aircraft(UUID.randomUUID().toString(), "Airbus", "A320", "airbus_logo.png");
		aircrafts.add(airbus2);
		Aircraft airbus3 = new Aircraft(UUID.randomUUID().toString(), "Airbus", "A350", "airbus_logo.png");
		aircrafts.add(airbus3);

	}

	public static void addDefaultServices() {
		Service servicio1 = new Service(UUID.randomUUID().toString(), "WiFi");
		services.add(servicio1);
		Service servicio2 = new Service(UUID.randomUUID().toString(), "Entretenimiento a bordo");
		services.add(servicio2);
		Service servicio3 = new Service(UUID.randomUUID().toString(), "Comida a bordo");
		services.add(servicio3);
		Service servicio4 = new Service(UUID.randomUUID().toString(), "Asientos reclinables");
		services.add(servicio4);
		Service servicio5 = new Service(UUID.randomUUID().toString(), "Kit de amenidades");
		services.add(servicio5);
	}

	private static Service getRandomService() {
		return services.get(new Random().nextInt(services.size()));
	}

	private static Aircraft getRandomAircraft() {
		return aircrafts.get(new Random().nextInt(aircrafts.size()));
	}

	private static Airline getRandomAirline() {
		return airlines.get(new Random().nextInt(airlines.size()));
	}

	private static ArrayList<Service> getRandomServices() {
		ArrayList<Service> randomServices = new ArrayList<>();
		int numberOfRandomServices = new Random().nextInt(5) + 1; // entre 1 y 5 servicios aleatorios
		for (int i = 0; i < numberOfRandomServices; i++) {
			randomServices.add(getRandomService());
		}
		return randomServices;
	}
}
