package co.edu.unbosque.controller;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import co.edu.unbosque.model.dataSource.DataSource;

@WebListener
public class FlightInitializer implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("Valores por defecto agregados al iniciar el servidor.");
		
		DataSource.addDefaultCities();
		DataSource.addDefaultAircrafts();
		DataSource.addDefaultAirlines();
		DataSource.addDefaultServices();
		DataSource.addDefaultFlights();
		
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
	}
}
