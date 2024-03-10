<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="co.edu.unbosque.model.dtos.BookingDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ion-row>
    <ion-col>
        <ion-card class="template-card">
        	<%
			    BookingDTO booking = (BookingDTO) request.getAttribute("booking");
			%>
            <img class="find-image" alt="Silhouette of mountains" src="./img/wing.png" />
            <ion-card-header>
                <ion-card-title>No de Reserva: <%= booking.getId() %></ion-card-title>
            </ion-card-header>
            <ion-card-content>
            	<ion-card>
			        <ion-card-header>
			            <ion-card-title>Detalles de la Reserva</ion-card-title>
			        </ion-card-header>
			
			        <ion-card-content>
			        
			            <ion-item>
			                <ion-label position="stacked">Nombre</ion-label>
			                <ion-input value="<%= booking.getFirstName() %> <%= booking.getLastName() %>" readonly></ion-input>
			            </ion-item>
			            <ion-item>
			                <ion-label position="stacked">Correo Electrónico</ion-label>
			                <ion-input value="<%= booking.getEmail() %>" readonly></ion-input>
			            </ion-item>
			            <ion-item>
			                <ion-label position="stacked">Número de Asientos</ion-label>
			                <ion-input value="<%= booking.getSeats() %>" readonly></ion-input>
			            </ion-item>
			            <ion-item>
			                <ion-label position="stacked">Precio Total</ion-label>
			                <ion-input value="<%= booking.getTotalPrice() %>" readonly></ion-input>
			            </ion-item>
			        </ion-card-content>
			
			        <ion-card-header>
			            <ion-card-subtitle>Detalles del Vuelo</ion-card-subtitle>
			        </ion-card-header>
			
			        <ion-card-content>
			            <ion-item>
			                <ion-label position="stacked">Número de Vuelo</ion-label>
			                <ion-input value="<%= booking.getFlightDTO().getNumber() %>" readonly></ion-input>
			            </ion-item>
			            <ion-item>
			                <ion-label position="stacked">Origen</ion-label>
			                <ion-input value="<%= booking.getFlightDTO().getOriginCity().getName() %> (<%= booking.getFlightDTO().getOriginCity().getId() %>)" readonly></ion-input>
			            </ion-item>
			            <ion-item>
			                <ion-label position="stacked">Destino</ion-label>
			                <ion-input value="<%= booking.getFlightDTO().getDestinyCity().getName() %> (<%= booking.getFlightDTO().getDestinyCity().getId() %>)" readonly></ion-input>
			            </ion-item>
			            <ion-item>
			                <ion-label position="stacked">Hora de Salida</ion-label>
			                <ion-input value="<%= booking.getFlightDTO().getDepartureTime() %>" readonly></ion-input>
			            </ion-item>
			            <ion-item>
			                <ion-label position="stacked">Hora de Llegada</ion-label>
			                <ion-input value="<%= booking.getFlightDTO().getLandingTime() %>" readonly></ion-input>
			            </ion-item>
			            <ion-item>
			                <ion-label position="stacked">Aerolínea</ion-label>
			                <ion-input value="<%= booking.getFlightDTO().getAirline().getCompany() %>" readonly></ion-input>
			            </ion-item>
			        </ion-card-content>
			        
			        <ion-button fill="outline" color="danger" onclick="cancelarReserva()">
		                <ion-icon slot="start"
		                    name="arrow-forward-circle-outline"></ion-icon>
		                Cancelar Reserva
		            </ion-button>
			    </ion-card>
            </ion-card-content>
        </ion-card>
    </ion-col>
</ion-row>
</body>
</html>