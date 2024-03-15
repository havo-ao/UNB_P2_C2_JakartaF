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
				<%
					if (booking.getIsCanceled().contains("true")) {
					%>
					    <ion-badge style="margin-top: 20px; padding: 10px;" color="danger">
					        Reserva Cancelada
					    </ion-badge>
					<%
					}
				%>
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
			            <ion-item>
			                <ion-label position="stacked">Estado de Reserva</ion-label>
			                <ion-input value="<%= booking.getIsCanceled().contains("false") ? "Activo" : "Cancelado" %>" readonly></ion-input>
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
			        
			        <%
					if (!booking.getIsCanceled().contains("true")) {
					%>
					    <ion-button fill="outline" color="danger" onclick="openModal('<%= booking.getId() %>')">
					        <ion-icon slot="start" name="arrow-forward-circle-outline"></ion-icon>
					        Cancelar Reserva
					    </ion-button>
					<%
					}
					%>
			    </ion-card>
            </ion-card-content>
        </ion-card>
    </ion-col>
</ion-row>

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
	    	<div class="cancel-message">
		    	<h4>¿Cancelar vuelo?</h4>
		    	<h5>Después de cancelada la reserva no es posible recuperarla.</h5>
	    	</div>
	    </ion-content>
	  </ion-modal>
  
    <script>
	    let globalBookingId = "";
		    	
		 function openModal(bookingId) {
		    const modal = document.querySelector('#booking-modal');
	      	globalBookingId = bookingId;	        
		    modal.present();
	
		  }
		    
		  function cancel() {
	          const modal = document.querySelector('#booking-modal');
	          modal.dismiss(null, 'cancel');
	      }
	    
		  var modal = document.querySelector('ion-modal');
		
		  function confirm() {
	          const bookingId = globalBookingId;
	
	          const form = document.createElement('form');
	          form.method = 'POST';
	          form.action = 'bookings';
	          form.style.display = 'none';
	
	          const bookingIdInput = document.createElement('input');
	          bookingIdInput.type = 'text';
	          bookingIdInput.name = 'bookingId';
	          bookingIdInput.value = bookingId;
	          form.appendChild(bookingIdInput);
	
	          document.body.appendChild(form);
	          form.submit();
	      }
	</script>


</body>
</html>