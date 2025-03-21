<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="co.edu.unbosque.model.entities.City" %>
<%@ page import="co.edu.unbosque.model.dataSource.DataSource" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jakarta Flights</title>
<style>
    .hidden {
        display: none;
    }
</style>

</head>
<body>
<ion-row>
    <ion-col>
        <ion-card class="template-card">
            <img class="find-image" alt="Silhouette of mountains" src="./img/wing.png" />
            <ion-card-header>
                <ion-card-title>Buscar vuelos</ion-card-title>
            </ion-card-header>
            <ion-card-content>
                <ion-grid>
				    <ion-row>
				    
				        <ion-col class="col-origin" size-xs="12" size-lg="7">
				            <div class="input-container">
				                <ion-icon name="location-outline"></ion-icon>
				                <ion-select aria-label="Origin" label-placement="floating"
				                    label="Origen" interface="popover" fill="outline"
				                    id="originSelect" onchange="updateDestinyOptions()">
				                    <% for (City city : DataSource.cities) { %>
								        <ion-select-option value="<%= city.getId() %>">
								            <%= city.getName() %> (<%= city.getId() %>)
								        </ion-select-option>
								    <% } %>
				                </ion-select>
				            </div>
				        </ion-col>
				        
				        <ion-col class="col-date" size-xs="12" size-lg="5">
				            <ion-label class="label-date" position="floating">Fecha de
				                Viaje</ion-label>
				            <ion-datetime-button datetime="datetime" displayFormat="DD-MM-YYYY">
				            </ion-datetime-button>
				
				            <ion-modal>
				                <ion-datetime presentation="date" id="datetime" displayFormat="DD-MM-YYYY">
				                </ion-datetime>
				            </ion-modal>
				
				        </ion-col>
				        
				        <ion-col class="col-destiny"  size-xs="12" size-lg="7">
				            <div class="input-container">
				                <ion-icon name="airplane-outline"></ion-icon>
				                <ion-select aria-label="Destino" label-placement="floating"
				                    label="Destino" interface="popover" fill="outline"
				                    id="destinySelect">
				                    <% for (City city : DataSource.cities) { %>
								        <ion-select-option value="<%= city.getId() %>">
								            <%= city.getName() %> (<%= city.getId() %>)
								        </ion-select-option>
								    <% } %>
				                </ion-select>
				            </div>
				        </ion-col>
				        
				        <ion-col class="col-seats" size-xs="12" size-lg="5">
				            <ion-input onkeypress="return isNumberKey(event)" label-placement="floating" fill="outline"
				                label="Pasajeros" id="numberOfPassengers"></ion-input>
				        </ion-col>
				    </ion-row>
				
				    <ion-row>
				        <ion-col class="btn-find">
				            <ion-button fill="outline" color="primary" onclick="buscarVuelos()">
				                <ion-icon slot="start"
				                    name="arrow-forward-circle-outline"></ion-icon>
				                Buscar
				            </ion-button>
				        </ion-col>
				    </ion-row>
				</ion-grid>        

            </ion-card-content>
        </ion-card>
    </ion-col>
</ion-row>

<script>

	document.addEventListener('DOMContentLoaded', function() {
	    var datetimePicker = document.getElementById('datetime');
	    
	    var today = new Date();
	    
	    today.setDate(today.getDate() - 1);
	    
	    var formattedToday = today.toISOString().split('T')[0];
	    
	    datetimePicker.min = formattedToday;
	});
	
	function isNumberKey(evt) {
	    let charCode = (evt.which) ? evt.which : evt.keyCode;
	    if (charCode > 31 && (charCode < 48 || charCode > 57))
	        return false;
	    return true;
	}
	
   function buscarVuelos() {
       var origin = document.getElementById('originSelect').value;
       var destiny = document.getElementById('destinySelect').value;
       var rawDate = document.getElementById('datetime').value;
       
       if (!rawDate) {
           alert("Por favor seleccione la fecha.");
           return;
       }

       if (origin === destiny) {
         alert('Los lugares de origen y destino deben ser diferentes. Por favor, seleccione diferentes ciudades.');
         return;
       } 
       
       var date = rawDate.split('T')[0];
       var parts = date.split('-');
       var formattedDate = parts[2] + '-' + parts[1] + '-' + parts[0];

       var numberOfPassengers = document.getElementById('numberOfPassengers').value;
       
       if (numberOfPassengers < 1 ) {
           alert("Por favor ingrese una cantidad de pasajeros válida.");
           return;
       }
       
       var url = 'search-flight?origin=' + origin + '&destiny=' + destiny + '&date=' + formattedDate + '&numberOfPassengers=' + numberOfPassengers;
       
       window.location.href = url;
   }
</script>
</body>
</html>