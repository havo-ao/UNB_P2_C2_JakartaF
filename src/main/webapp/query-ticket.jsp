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
                <ion-card-title>Buscar Tiquete</ion-card-title>
            </ion-card-header>
            <ion-card-content >
                <ion-item style="margin-bottom: 10px">
			        <ion-input id="bookingId" label="Ingresar Numero de Reserva" label-placement="floating" type="text"></ion-input>
			      </ion-item>
			      <div style="padding: 20px; width: 100%; text-align: center">
				      <ion-button fill="outline" color="primary" onclick="consultarReserva()">
	                   	<ion-icon slot="start" name="arrow-forward-circle-outline"></ion-icon>
	                   	Consultar
	                	</ion-button>
               	  </div>
			</ion-card-content>
        </ion-card>
    </ion-col>
</ion-row>
<script>
    function consultarReserva() {
        var bookingId = document.getElementById("bookingId").value;
        window.location.href = "booking?bookingId=" + bookingId;
    }
</script>
</body>
</html>