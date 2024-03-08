<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ion-row id="flight-results">
	     <ion-col>
	         <ion-card class="template-card template-results">
	             <ion-card-content>
	                 <ion-grid>
	                     <ion-row>
	                         <ion-col size-xs="4" size-lg="3">
	                             <div class="airline-logo-container">
	                                 <img class="airline-logo" alt="turkish-airlines"
	                                     src="./img/turkish-airlines.png" />
	                             </div>
	                         </ion-col>
	                         <ion-col size-xs="8" size-lg="9">
	                             <ion-grid>
	                                 <ion-row>
	                                     <ion-col size-xs="12" size-lg="8">
	                                         <div class="flight-details">
	                                             <div class="airline">
	                                                 <h3>Turkish Airlines</h3>
	                                             </div>
	                                             <div class="flight-duration">
	                                                 <h2>16:35 - 16:40 +1</h2>
	                                                 <h3>16h 05m</h3>
	                                             </div>
	                                             <div class="flight-airports">
	                                                 <h3>Martes 5 de Marzo</h3>
	                                             </div>
	                                             <div class="flight-airports">
	                                                 <h3>(BOG) El Dorado</h3>
	                                                 <div class="dash">-</div>
	                                                 <h3>(IST) Estambul</h3>
	                                             </div>
	                                         </div>
	                                     </ion-col>
	                                     <ion-col size-xs="12" size-lg="4">
	                                         <div class="price-details">
	                                             <h1>$5'775.000</h1>
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
	                                                 alt="turkish-airlines"
	                                                 src="./img/turkish-airlines.png" />
	                                             <h3>Turkish Airlines 801</h3>
	                                         </div>
	                                         <div class="flight-airline-details">
	                                             <ion-badge slot="start" color="dark">263</ion-badge>
	                                             <ion-label>Asientos disponibles</ion-label>
	                                         </div>
	                                         <div class="flight-airline-details">
	                                             <ion-icon name="briefcase-outline"
	                                                 color="success"></ion-icon>
	                                             <ion-label>Equipaje en Bodega</ion-label>
	                                         </div>
	                                         <div class="flight-airline-details">
	                                             <ion-icon name="fast-food-outline"
	                                                 color="success"></ion-icon>
	                                             <ion-label>Alimentación</ion-label>
	                                         </div>
	                                         <div class="flight-airline-details">
	                                             <ion-icon name="image-outline"
	                                                 color="danger"></ion-icon>
	                                             <ion-label>Entretenimiento a Bordo</ion-label>
	                                         </div>
	                                     </ion-col>
	                                     <ion-col size-xs="12" size-lg="5">
	                                         <div class="aircraft-details">
	                                             <img class="flight-aircraft-details-logo"
	                                                 alt="boeing" src="./img/boeing.png" />
	                                             <h3>
	                                                 Boeing 787-9 Dreamliner (Jet de fuselaje ancho)
	                                             </h3>
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
</body>
</html>