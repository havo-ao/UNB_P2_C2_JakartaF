<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Jakarta Flights</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@ionic/core/css/ionic.bundle.css" />
        <link rel="stylesheet" href="./css/styles.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap"
            rel="stylesheet">
        <script type="module" src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.esm.js"></script>
        <script nomodule src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.js"></script>
    </head>

    <body>
        <ion-app>
            <ion-menu content-id="main-content" swipeGesture="false">
                <ion-header>
                    <ion-toolbar>
                        <ion-title>Servicios</ion-title>
                        <ion-buttons slot="end">
                            <ion-menu-toggle>
                                <ion-button onclick="closeWithBtn()">
                                    <ion-icon slot="icon-only" name="close"></ion-icon>
                                </ion-button>
                            </ion-menu-toggle>
                        </ion-buttons>
                    </ion-toolbar>
                </ion-header>
                <ion-content>
                    <ion-list lines="full" class="main-menu">
                        <ion-label color="medium">Usuarios</ion-label>
                        <a href="index.jsp" class="ion-item-link">
                            <ion-item>
                                <ion-icon name="search-outline"></ion-icon>
                                <ion-label>Buscar Vuelos</ion-label>
                            </ion-item>
                        </a>
                        <a href="index.jsp?page=query-ticket" class="ion-item-link">
                            <ion-item>
                                <ion-icon name="ticket-outline"></ion-icon>
                                <ion-label>Consultar Reserva</ion-label>
                            </ion-item>
                        </a>
                    </ion-list>

                    <ion-list lines="full" class="main-menu">
                        <ion-label color="medium">Administradores</ion-label>
                        <a href="bookings" class="ion-item-link">
                            <ion-item>
                                <ion-icon name="airplane-outline"></ion-icon>
                                <ion-label>Reservas</ion-label>
                            </ion-item>
                        </a>
                        <a href="flights" class="ion-item-link">
                            <ion-item>
                                <ion-icon name="document-text-outline"></ion-icon>
                                <ion-label>Vuelos</ion-label>
                            </ion-item>
                        </a>
                    </ion-list>
                </ion-content>
            </ion-menu>
            <div class="ion-page" id="main-content">
                <ion-header>
                    <ion-toolbar color="primary">
                        <ion-buttons slot="start">

                            <ion-button onclick="openWithBtn()">
                                <ion-icon slot="icon-only" name="menu"></ion-icon>
                            </ion-button>
                        </ion-buttons>
                        <ion-title>Jakarta Flights</ion-title>
                    </ion-toolbar>
                </ion-header>
                <ion-content class="ion-padding main-content-container">
                    <ion-grid>
                        
                        
                        <%
		                    String pageParam = request.getParameter("page");
		                    if (pageParam != null) {
		                    	if (pageParam.equals("results")) {
		                            %>
		                            <%@include file="flight-results.jsp" %>
		                            <%
		                        } else if (pageParam.equals("query-ticket")) {
		                            %>
		                            <%@include file="query-ticket.jsp" %>
		                            <%
		                        }  else if (pageParam.equals("flights")) {
		                            %>
		                            <%@include file="flights.jsp" %>
		                            <%
		                        } else if (pageParam.equals("booking")) {
		                            %>
		                            <%@include file="booking.jsp" %>
		                            <%
		                        } else if (pageParam.equals("bookings")) {
		                            %>
		                            <%@include file="bookings.jsp" %>
		                            <%
		                        }
		                    } else {
		                    	%>
	                            <%@include file="flight-finder.jsp" %>
	                            <%
		                    	
		                    }
		                %>
                        
                        
                    </ion-grid>
                </ion-content>
            </div>
        </ion-app>
        <script>
		  document.addEventListener('ionMenuWillOpen', (event) => {
		    const menu = document.querySelector('ion-menu');
		    if (menu) {
		      menu.swipeGesture = false;
		    }
		  });
		</script>
		        
        <script>
            const ionMenu = document.querySelector('ion-menu');
            const mainContent = document.getElementById('main-content');

            function closeWithBtn() {
                if (window.innerWidth > 768) {
                    mainContent.style.transition = 'transform 0.3s ease, width 0.3s ease, boxShadow 0.3s ease';
                    mainContent.style.width = '100%';
                    mainContent.style.transform = 'translateX(0)';
                    ionMenu.style.boxShadow = 'unset';
                } else {
                	ionMenu.close();
                }
            }

            function openWithBtn() {
                if (window.innerWidth > 768) {
                    mainContent.style.transition = 'transform 0.3s ease, width 0.3s ease, boxShadow 0.3s ease';
                    mainContent.style.width = 'calc(100% - 304px)';
                    mainContent.style.transform = 'translateX(304px)';
                    ionMenu.open();

                    setTimeout(function () {
                        ionMenu.style.boxShadow = 'rgba(0, 0, 0, 0.18) 4px 0px 16px';
                    }, 240);
                } else {
                	ionMenu.open();
                }
            }

            window.addEventListener('load', function () {
                if (window.innerWidth > 768) {
                    ionMenu.open();
                    openWithBtn()
                }
            });
        </script>
    </body>

    </html>