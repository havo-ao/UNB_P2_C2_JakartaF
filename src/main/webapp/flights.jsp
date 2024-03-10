<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="co.edu.unbosque.model.dtos.FlightDTO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Vuelos</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/5.5.3/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/@ionic/core/5.6.7/css/ionic.bundle.css">
</head>
<body>
        <ion-header>
            <ion-toolbar color="primary">
                <ion-title>Lista de Vuelos</ion-title>
            </ion-toolbar>
        </ion-header>
        <ion-content>
            <ion-table>
                <ion-thead>
                    <ion-row>
                        <ion-th>Origen</ion-th>
                        <ion-th>Destino</ion-th>
                        <ion-th>Aerolínea</ion-th>
                        <ion-th>Hora de Salida</ion-th>
                        <ion-th>Hora de Llegada</ion-th>
                        <ion-th>Precio</ion-th>
                    </ion-row>
                </ion-thead>
                <ion-tbody>
                    <% for (FlightDTO flight : (ArrayList<FlightDTO>) request.getAttribute("flights")) { %>
                    <ion-row>
                        <ion-td><%= flight.getOriginCity().getName() %></ion-td>
                        <ion-td><%= flight.getDestinyCity().getName() %></ion-td>
                        <ion-td><%= flight.getAirline().getCompany() %></ion-td>
                        <ion-td><%= flight.getDepartureTime() %></ion-td>
                        <ion-td><%= flight.getLandingTime() %></ion-td>
                        <ion-td>$<%= flight.getPrice() %></ion-td>
                    </ion-row>
                    <% } %>
                </ion-tbody>
            </ion-table>
        </ion-content>

    
</body>
</html>