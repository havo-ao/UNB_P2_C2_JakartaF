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
            border-collapse: collapse;
            margin: 20px;
            width: 95%;
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
        <ion-card class="template-card">
            <img class="find-image" alt="Silhouette of mountains" src="./img/wing.png" />
            <ion-card-header>
                <ion-card-title>Buscar Tiquete</ion-card-title>
            </ion-card-header>
            <ion-card-content>
                <ion-title>Lista de Vuelos</ion-title>
		        
	            <table>
			        <thead>
			            <tr>
			                <th>Origen</th>
			                <th>Destino</th>
			                <th>Aerolínea</th>
			                <th>Hora de Salida</th>
			                <th>Hora de Llegada</th>
			                <th>Precio</th>
			            </tr>
			        </thead>
			        <tbody>
			            <% for (FlightDTO flight : (ArrayList<FlightDTO>) request.getAttribute("flights")) { %>
			            <tr>
			                <td><%= flight.getOriginCity().getName() %></td>
			                <td><%= flight.getDestinyCity().getName() %></td>
			                <td><%= flight.getAirline().getCompany() %></td>
			                <td><%= flight.getDepartureTime() %></td>
			                <td><%= flight.getLandingTime() %></td>
			                <td>$<%= flight.getPrice() %></td>
			            </tr>
			            <% } %>
			        </tbody>
			    </table>
			</ion-card-content>
        </ion-card>
    </ion-col>
</ion-row>
</body>
</html>