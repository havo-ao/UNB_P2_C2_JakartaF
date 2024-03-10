<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="co.edu.unbosque.model.dtos.FlightDTO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultados de la Búsqueda de Vuelos</title>
</head>
<body>
	<% for (FlightDTO flight : (ArrayList<FlightDTO>) request.getAttribute("matchingFlightsDTO")) { %>
	    <ion-row id="flight-results">
            <ion-col>
                <ion-card class="template-card template-results">
                    <ion-card-content>
                        <ion-grid>
                            <ion-row>
                                <ion-col size-xs="4" size-lg="3">
                                    <div class="airline-logo-container">
                                        <img class="airline-logo" alt="<%= flight.getAirline().getCompany() %>"
                                            src="./img/<%= flight.getAirline().getLogo() %>" />
                                    </div>
                                </ion-col>
                                <ion-col size-xs="8" size-lg="9">
                                    <ion-grid>
                                        <ion-row>
                                            <ion-col size-xs="12" size-lg="8">
                                                <div class="flight-details">
                                                    <div class="airline">
                                                        <h3><%= flight.getAirline().getCompany() %></h3>
                                                    </div>
                                                    <div class="flight-duration">
                                                        <h2><%= flight.getDepartureTime() %> - <%= flight.getLandingTime() %></h2>
                                                        <h3><%= flight.getTime() %></h3>
                                                    </div>
                                                    <div class="flight-airports">
                                                        <h3><%= flight.getDate() %></h3>
                                                    </div>
                                                    <div class="flight-airports">
                                                    		<ion-icon name="location-outline"></ion-icon>
                                                        <h3>(<%= flight.getOriginCity().getId() %>) <%= flight.getOriginCity().getAirport() %> - <%= flight.getOriginCity().getName() %></h3>
                                                    </div>
                                                    <div class="flight-airports">
                                                    		<ion-icon name="airplane-outline"></ion-icon>
                                                       	<h3>(<%= flight.getDestinyCity().getId() %>) <%= flight.getDestinyCity().getAirport() %> - <%= flight.getDestinyCity().getName() %></h3>
                                                    </div>
                                                </div>
                                            </ion-col>
                                            <ion-col size-xs="12" size-lg="4">
                                                <div class="price-details">
                                                    <h1>$<%= flight.getPrice() %></h1>
                                                    <ion-button fill="outline" color="primary">
                                                        <ion-icon slot="start"
                                                            name="arrow-forward-circle-outline"></ion-icon>
                                                        Reservar
                                                    </ion-button>
                                                </div>
                                            </ion-col>
                                        </ion-row>
                                    </ion-grid>
                                </ion-col>
                            </ion-row>
                        </ion-grid>
                        <ion-accordion-group>
                            <ion-accordion value="first">
                                <ion-item slot="header" color="light">
                                    <ion-label>Detalles del vuelo</ion-label>
                                </ion-item>
                                <div class="ion-padding" slot="content">
                                    <ion-grid>
                                        <ion-row>
                                            <ion-col size-xs="12" size-lg="7">
                                                <div class="flight-airline-details">
                                                    <img class="flight-airline-details-logo"
                                                        alt="<%= flight.getAirline().getCompany() %>"
                                                        src="./img/<%= flight.getAirline().getLogo() %>" />
                                                    <h3><%= flight.getAirline().getCompany() %> <%= flight.getAirlineFlightId() %></h3>
                                                </div>
                                                <div class="flight-airline-details">
                                                    <ion-badge slot="start" color="dark"><%= flight.getAvailableSeats() %></ion-badge>
                                                    <ion-label>Asientos disponibles</ion-label>
                                                </div>
                                                <div class="flight-airline-details">
                                                    <ion-icon name="briefcase-outline" color="success"></ion-icon>
                                                    <ion-label>Equipaje en Bodega</ion-label>
                                                </div>
                                            </ion-col>
                                            <ion-col size-xs="12" size-lg="5">
                                                <div class="aircraft-details">
                                                    <img class="flight-aircraft-details-logo"
                                                        alt="<%= flight.getAircraft().getBrand() %>"
                                                        src="./img/<%= flight.getAircraft().getLogo() %>" />
                                                    <h3><%= flight.getAircraft().getBrand() %> <%= flight.getAircraft().getAircraftModel() %></h3>
                                                </div>
                                            </ion-col>
                                        </ion-row>
                                    </ion-grid>
                                </div>
                            </ion-accordion>
                        </ion-accordion-group>
                    </ion-card-content>
                </ion-card>
            </ion-col>
        </ion-row>
    <% } %>
</body>
</html>
