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
		LocalDate threeDaysLater = today.plusDays(3);
		LocalDate fourDaysLater = today.plusDays(4);

		String[][] flightInfo = {
				{ "BOG", "ADZ", "2h 30m", "09:00", "11:30", "250000", "180", threeDaysLater.toString() },
				{ "BOG", "MDE", "1h 10m", "09:00", "10:10", "250000", "180", threeDaysLater.toString() },
				{ "BOG", "GIG", "6h 20m", "13:45", "20:05", "300000", "200", threeDaysLater.toString() },
				{ "MDE", "DXB", "14h 15m", "10:30", "00:45", "700000", "220", threeDaysLater.toString() },
				{ "MDE", "EZE", "6h 45m", "14:00", "20:45", "600000", "190", threeDaysLater.toString() },
				{ "MDE", "GIG", "6h 30m", "13:20", "19:50", "300000", "180", threeDaysLater.toString() },
				{ "EZE", "LHR", "12h 20m", "16:20", "04:40", "900000", "230", fourDaysLater.toString() },
				{ "EZE", "MAD", "10h 30m", "18:00", "04:30", "750000", "210", fourDaysLater.toString() },
				{ "EZE", "LON", "9h 15m", "20:00", "05:15", "1000000", "240", fourDaysLater.toString() },
				{ "GIG", "IST", "12h 15m", "15:15", "03:30", "800000", "200", fourDaysLater.toString() },
				{ "GIG", "MAD", "9h 40m", "16:30", "02:10", "700000", "190", fourDaysLater.toString() },
				{ "GIG", "LON", "11h 20m", "17:00", "04:20", "750000", "210", fourDaysLater.toString() } };

		int flightIndex = 1;
		for (String[] flight : flightInfo) {
			for (int i = 0; i < 5; i++) {
				String origin = flight[0];
				String destination = flight[1];
				String duration = flight[2];
				String departureTime = flight[3];
				String arrivalTime = flight[4];
				double price = Double.parseDouble(flight[5]);
				int availableSeats = Integer.parseInt(flight[6]);
				LocalDate departureDate = LocalDate.parse(flight[7]);

				Flight newFlight = new Flight(UUID.randomUUID().toString(), "V" + (flightIndex * 4 + 400), origin,
						destination, "" + (flightIndex * 4 + 400), availableSeats, price, departureDate, duration,
						departureTime, arrivalTime, getRandomServices(), getRandomAircraft().getId(),
						getRandomAirline().getId());

				flights.add(newFlight);
				flightIndex++;
			}
		}
	}

	public static void addDefaultCities() {
		String[][] cityInfo = { { "BOG", "Bogotá", "Aeropuerto Internacional El Dorado" },
				{ "ADZ", "San Andrés", "Aeropuerto Internacional Gustavo Rojas Pinilla" },
				{ "MDE", "Medellín", "Aeropuerto Internacional José María Córdova" },
				{ "DXB", "Dubái", "Aeropuerto Internacional de Dubái" },
				{ "IST", "Estambul", "Aeropuerto Internacional de Estambul" },
				{ "GIG", "Río de Janeiro", "Rio de Janeiro-Galeão International Airport" },
				{ "JFK", "Nueva York", "John F. Kennedy International Airport" },
				{ "MAD", "Madrid", "Adolfo Suárez Madrid-Barajas Airport" },
				{ "EZE", "Buenos Aires", "Ministro Pistarini International Airport" },
				{ "LHR", "Londres", "Heathrow Airport" } };

		for (String[] city : cityInfo) {
			City newCity = new City(city[0], city[1], city[2]);
			cities.add(newCity);
		}
	}

	public static void addDefaultAirlines() {
		String[][] airlineInfo = { { "TURKISH", "Turkish Airlines", "turkish-airlines.png" },
				{ "DELTA", "Delta", "delta.png" }, { "AVIANCA", "Avianca", "avianca.png" },
				{ "EMIRATES", "Emirates", "emirates.png" }, { "AA", "American Airlines", "american-airlines.png" } };

		for (String[] airline : airlineInfo) {
			Airline newAirline = new Airline(airline[0], airline[1], airline[2]);
			airlines.add(newAirline);
		}
	}

	public static void addDefaultAircrafts() {
		String[][] aircraftInfo = {
				// Boeing
				{ "Boeing", "747 (Jet de fuselaje ancho)", "boeing_logo.png" },
				{ "Boeing", "787-9 Dreamliner (Jet de fuselaje ancho)", "boeing_logo.png" },
				{ "Boeing", "737 (Jet de fuselaje angosto)", "boeing_logo.png" },
				// Airbus
				{ "Airbus", "A380 (Jet de fuselaje ancho)", "airbus_logo.png" },
				{ "Airbus", "A320 (Jet de fuselaje angosto)", "airbus_logo.png" },
				{ "Airbus", "A350 (Jet de fuselaje ancho)", "airbus_logo.png" } };

		for (String[] aircraft : aircraftInfo) {
			Aircraft newAircraft = new Aircraft(UUID.randomUUID().toString(), aircraft[0], aircraft[1], aircraft[2]);
			aircrafts.add(newAircraft);
		}
	}

	public static void addDefaultServices() {
		String[] serviceNames = { "WiFi", "Entretenimiento a bordo", "Comida a bordo", "Asientos reclinables",
				"Kit de amenidades" };

		for (String serviceName : serviceNames) {
			Service newService = new Service(UUID.randomUUID().toString(), serviceName);
			services.add(newService);
		}
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
