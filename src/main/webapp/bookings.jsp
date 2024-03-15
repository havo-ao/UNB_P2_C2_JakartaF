<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="co.edu.unbosque.model.dtos.BookingDTO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Bookings</title>
<style>
    table {
        margin: 20px;
        width: 100%;
        min-width: 1500px;
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
                        <ion-title>Lista de Reservas</ion-title>
                    </ion-toolbar>
                </ion-header>

                <div class="flights-container">
                    <table>
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>No. de Reserva</th>
                                <th>Estado</th>
                                <th>Nombre</th>
                                <th>Correo Electrónico</th>
                                <th>Número de Asientos</th>
                                <th>Precio Total</th>
                                <th>Número de Vuelo</th>
                                <th>Origen</th>
                                <th>Destino</th>
                                <th>Hora de Salida</th>
                                <th>Hora de Llegada</th>
                                <th>Aerolínea</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% int rowNum = 1; %>
                            <% for (BookingDTO booking : (ArrayList<BookingDTO>) request.getAttribute("bookings")) { %>
                            <tr>
                                <td><%= rowNum++ %></td>
                                <td><%= booking.getId() %></td>
                                <td>
                                	<ion-badge 
                                	color="<%= booking.getIsCanceled().contains("false") ? "success" : "danger" %>">
					        			<%= booking.getIsCanceled().contains("false") ? "Activo" : "Cancelado" %>
					    			</ion-badge>
					    		</td>
                                <td><%= booking.getFirstName() %> <%= booking.getLastName() %></td>
                                <td><%= booking.getEmail() %></td>
                                <td><%= booking.getSeats() %></td>
                                <td>$<%= booking.getTotalPrice() %></td>
                                <td><%= booking.getFlightDTO().getNumber() %></td>
                                <td><%= booking.getFlightDTO().getOriginCity().getName() %> (<%= booking.getFlightDTO().getOriginCity().getId() %>)</td>
                                <td><%= booking.getFlightDTO().getDestinyCity().getName() %> (<%= booking.getFlightDTO().getDestinyCity().getId() %>)</td>
                                <td><%= booking.getFlightDTO().getDepartureTime() %></td>
                                <td><%= booking.getFlightDTO().getLandingTime() %></td>
                                <td><%= booking.getFlightDTO().getAirline().getCompany() %></td>
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
