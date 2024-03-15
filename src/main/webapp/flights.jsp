<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="co.edu.unbosque.model.dtos.FlightDTO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        table {
            margin: 20px;
  			width: 2000px;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<ion-row>
    <ion-col>
        <ion-card class="template-card extend-card">
            <img class="find-image" alt="Silhouette of mountains" src="./img/flights.png" />
            
            <ion-card-content class="flights-card-container">
	            <ion-header>
	                <ion-toolbar color="dark">
			        <ion-title>Lista de Vuelos Disponibles</ion-title>
			        <ion-buttons slot="end">
			          <ion-button onclick="confirm()">Agregar Nuevo</ion-button>
			        </ion-buttons>
			      </ion-toolbar>
	            </ion-header>
            
		        <div class="flights-container">
		            <table>
				        <thead>
				            <tr>
				            	<th>#</th>
				            	<th>Fecha</th>
				            	<th>Vuelo</th>
				            	<th>Aerolínea</th>
				                <th>Origen</th>
				                <th>Destino</th>
				                <th>Sillas Disponibles</th>
				                <th>Hora de Salida</th>
				                <th>Hora de Llegada</th>
				                <th>Tiempo de Vuelo</th>
				                <th>Avión</th>
				                <th>Precio</th>
				            </tr>
				        </thead>
				        <tbody>
				        	<% int rowNum = 1; %>
				            <% for (FlightDTO flight : (ArrayList<FlightDTO>) request.getAttribute("flights")) { %>
				            <tr>
				            	<td><%= rowNum++ %></td>
				            	<td class="text-center"><%= flight.getDate() %></td>
				            	<td><%= flight.getAirlineFlightId() %> de <%= flight.getAirline().getCompany() %></td>
				                <td class="text-center">
				                	<img class="airline-list-logo" alt="<%= flight.getAirline().getCompany() %>"
	                                            src="./img/<%= flight.getAirline().getLogo() %>" />
	                           	</td>
				                <td><%= flight.getOriginCity().getId() %> <%= flight.getOriginCity().getAirport() %> <%= flight.getOriginCity().getName() %></td>
				                <td><%= flight.getDestinyCity().getId() %> <%= flight.getDestinyCity().getAirport() %> <%= flight.getDestinyCity().getName() %></td>
				               	<td class="text-center"><%= flight.getAvailableSeats() %></td>
				                <td class="text-center"><%= flight.getDepartureTime() %></td>
				                <td class="text-center"><%= flight.getLandingTime() %></td>
				                <td class="text-center"><%= flight.getTime() %></td>
				                <td><%= flight.getAircraft().getBrand() %> <%= flight.getAircraft().getAircraftModel() %></td>
				                <td class="text-center">$<%= flight.getPrice() %></td>
				            </tr>
				            <% } %>
				        </tbody>
				    </table>
			    </div>
			</ion-card-content>
        </ion-card>
    </ion-col>
</ion-row>
</body>
</html>