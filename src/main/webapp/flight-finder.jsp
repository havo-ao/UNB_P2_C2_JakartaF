<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <img class="find-image" alt="Silhouette of mountains" src="./img/wing.png" />
            <ion-card-header>
                <ion-card-title>Buscar vuelos</ion-card-title>
            </ion-card-header>
            <ion-card-content>
                <ion-grid>
				    <ion-row>
				        <ion-col size-xs="12" size-lg="7">
				            <div class="input-container">
				                <ion-icon name="location-outline"></ion-icon>
				                <ion-select aria-label="Origin" label-placement="floating"
				                    label="Origen" interface="popover" fill="outline"
				                    id="originSelect">
				                    <ion-select-option value="BOG">
				                        Bogotá (BOG)
				                    </ion-select-option>
				                    <ion-select-option value="MDE">
				                        Medellín (MDE)
				                    </ion-select-option>
				                    <ion-select-option value="DXB">
				                        Dubái (DXB)
				                    </ion-select-option>
				                </ion-select>
				            </div>
				        </ion-col>
				        <ion-col size-xs="12" size-lg="5">
				            <ion-label class="label-date" position="floating">Fecha de
				                Viaje</ion-label>
				            <ion-datetime-button datetime="datetime" displayFormat="DD-MM-YYYY"
				                displayFormat="DD-MM-YYYY">
				            </ion-datetime-button>
				
				            <ion-modal>
				                <ion-datetime presentation="date" id="datetime" displayFormat="DD-MM-YYYY">
				                </ion-datetime>
				            </ion-modal>
				
				        </ion-col>
				        <ion-col size-xs="12" size-lg="7">
				            <div class="input-container">
				                <ion-icon name="airplane-outline"></ion-icon>
				                <ion-select aria-label="Destino" label-placement="floating"
				                    label="Destino" interface="popover" fill="outline"
				                    id="destinySelect">
				                    <ion-select-option value="BOG">
				                        Bogotá (BOG)
				                    </ion-select-option>
				                    <ion-select-option value="MDE">
				                        Medellín (MDE)
				                    </ion-select-option>
				                    <ion-select-option value="DXB">
				                        Dubái (DXB)
				                    </ion-select-option>
				                </ion-select>
				            </div>
				        </ion-col>
				        <ion-col size-xs="12" size-lg="5">
				            <ion-input label-placement="floating" fill="outline"
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
				
				<script>
				    function buscarVuelos() {
				        var origin = document.getElementById('originSelect').value;
				        var destiny = document.getElementById('destinySelect').value;
				        var rawDate = document.getElementById('datetime').value;
				        
				        if (!rawDate) {
				            alert("Por favor seleccione la fecha");
				            return;
				        }
				        
				        var date = rawDate.split('T')[0];
				        var parts = date.split('-');
				        var formattedDate = parts[2] + '-' + parts[1] + '-' + parts[0];

				        var numberOfPassengers = document.getElementById('numberOfPassengers').value;
				        
				        var url = 'search-flight?origin=' + origin + '&destiny=' + destiny + '&date=' + formattedDate + '&numberOfPassengers=' + numberOfPassengers;
				
				        console.log("Url: ", url)
				        
				        window.location.href = url;
				    }
				</script>
				                

            </ion-card-content>
        </ion-card>
    </ion-col>
</ion-row>
</body>
</html>