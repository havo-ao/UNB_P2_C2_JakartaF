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
                                                    <ion-button fill="outline" color="primary" onclick="openModal('<%= flight.getId() %>', '<%= flight.getPrice() %>', '<%= flight.getAirlineFlightId() %> de <%= flight.getAirline().getCompany() %>')">
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
    <ion-modal trigger="open-modal" id="booking-modal">
	    <ion-header>
	      <ion-toolbar>
	        <ion-buttons slot="start">
	          <ion-button onclick="cancel()">Cancelar</ion-button>
	        </ion-buttons>
	        <ion-title></ion-title>
	        <ion-buttons slot="end">
	          <ion-button onclick="confirm()" strong="true">Confirmar</ion-button>
	        </ion-buttons>
	      </ion-toolbar>
	    </ion-header>
	    <ion-content class="ion-padding">
	    <ion-item>
	        <ion-input id="flightNumber" disabled label="Vuelo" label-placement="floating" type="text"></ion-input>
	      </ion-item>
	      <ion-item>
	        <ion-input id="firstName" label="Nombre" label-placement="floating" type="text"></ion-input>
	      </ion-item>
	      <ion-item>
	        <ion-input id="lastName" label="Apellido" label-placement="floating" type="text"></ion-input>
	      </ion-item>
	      <ion-item>
	        <ion-input id="email" label="Correo" label-placement="floating" type="email"></ion-input>
	      </ion-item>
	      <ion-item>
	        <ion-input id="seats" label="No. de Pasajeros" label-placement="floating" type="phone" value="<%= request.getAttribute("seats")  %>"></ion-input>
	      </ion-item>
	    </ion-content>
	    <ion-footer>
		  <ion-toolbar color="primary">
		    <ion-title slot="start">Total: </ion-title>
		    <ion-title id="totalPrice" slot="end"></ion-title>
		  </ion-toolbar>
		</ion-footer>
	  </ion-modal>
  
    <script>
	    let seats = 0;
	    let globalFlightId = "";
	    let globalTotalPrice = 0;
	    	
	    function openModal(flightId, price, flightInfo) {
	    		const modal = document.querySelector('#booking-modal');
	    	
	        document.querySelector('#flightNumber').value = flightInfo;
	        globalFlightId = flightId;
	        seats = parseInt(modal.querySelector('#seats').value);
	        globalTotalPrice = seats * parseFloat(price);
	        
	        const formattedPrice = '$' + globalTotalPrice.toFixed(0).toLocaleString('es-CO');
	        
	        document.querySelector('#totalPrice').innerText = formattedPrice;
	        
	        modal.present();
	
	    }
	    
	    function cancel() {
            const modal = document.querySelector('#booking-modal');
            modal.dismiss(null, 'cancel');
        }
    
	  var modal = document.querySelector('ion-modal');
	
	  function confirm() {
          const modal = document.querySelector('#booking-modal');
          const firstName = modal.querySelector('#firstName').value;
          const lastName = modal.querySelector('#lastName').value;
          const email = modal.querySelector('#email').value;
          const seats = modal.querySelector('#seats').value;
          const totalPrice = globalTotalPrice;
          const flightId = globalFlightId;

          const form = document.createElement('form');
          form.method = 'POST';
          form.action = 'booking';
          form.style.display = 'none';

          const firstNameInput = document.createElement('input');
          firstNameInput.type = 'text';
          firstNameInput.name = 'firstName';
          firstNameInput.value = firstName;
          form.appendChild(firstNameInput);

          const lastNameInput = document.createElement('input');
          lastNameInput.type = 'text';
          lastNameInput.name = 'lastName';
          lastNameInput.value = lastName;
          form.appendChild(lastNameInput);

          const emailInput = document.createElement('input');
          emailInput.type = 'email';
          emailInput.name = 'email';
          emailInput.value = email;
          form.appendChild(emailInput);

          const seatsInput = document.createElement('input');
          seatsInput.type = 'number';
          seatsInput.name = 'seats';
          seatsInput.value = seats;
          form.appendChild(seatsInput);

          const totalPriceInput = document.createElement('input');
          totalPriceInput.type = 'number';
          totalPriceInput.name = 'totalPrice';
          totalPriceInput.value = totalPrice;
          form.appendChild(totalPriceInput);

          const flightIdInput = document.createElement('input');
          flightIdInput.type = 'text';
          flightIdInput.name = 'flightId';
          flightIdInput.value = flightId;
          form.appendChild(flightIdInput);

          document.body.appendChild(form);
          form.submit();
      }
	</script>
</body>
</html>
