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
            <ion-menu content-id="main-content">
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
                        <a href="index.jsp?page=users" class="ion-item-link">
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
                        <a href="index.jsp?page=create-flight" class="ion-item-link">
                            <ion-item>
                                <ion-icon name="airplane-outline"></ion-icon>
                                <ion-label>Crear Vuelo</ion-label>
                            </ion-item>
                        </a>
                        <a href="index.jsp?page=query-flights" class="ion-item-link">
                            <ion-item>
                                <ion-icon name="document-text-outline"></ion-icon>
                                <ion-label>Consultar Vuelos</ion-label>
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
                                                        <ion-select aria-label="Fruit" label-placement="floating"
                                                            label="Origen" interface="popover" fill="outline"
                                                            id="originSelect">
                                                            <ion-select-option value="BOG">
                                                                Bogotá (BOG)
                                                            </ion-select-option>
                                                            <ion-select-option value="oranges">
                                                                Medellín (MDE)
                                                            </ion-select-option>
                                                            <ion-select-option value="bananas">
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
                                                        <ion-datetime id="datetime" displayFormat="DD-MM-YYYY">
                                                        </ion-datetime>
                                                    </ion-modal>

                                                </ion-col>
                                                <ion-col size-xs="12" size-lg="7">
                                                    <div class="input-container">
                                                        <ion-icon name="airplane-outline"></ion-icon>
                                                        <ion-select aria-label="Fruit" label-placement="floating"
                                                            label="Destino" interface="popover" fill="outline"
                                                            id="destinySelect">
                                                            <ion-select-option value="BOG">
                                                                Bogotá (BOG)
                                                            </ion-select-option>
                                                            <ion-select-option value="oranges">
                                                                Medellín (MDE)
                                                            </ion-select-option>
                                                            <ion-select-option value="bananas">
                                                                Dubái (DXB)
                                                            </ion-select-option>
                                                        </ion-select>
                                                    </div>
                                                </ion-col>
                                                <ion-col size-xs="12" size-lg="5">
                                                    <ion-input label-placement="floating" fill="outline"
                                                        label="Pasajeros"></ion-input>
                                                </ion-col>
                                            </ion-row>

                                            <ion-row>
                                                <ion-col class="btn-find">
                                                    <ion-button fill="outline" color="primary">
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
                                <ion-card class="template-card template-results">
                                    <ion-card-content>
                                        <ion-grid>
                                            <ion-row>
                                                <ion-col size-xs="4" size-lg="3">
                                                    <div class="airline-logo-container">
                                                        <img class="airline-logo" alt="delta-airlines"
                                                            src="./img/delta.png" />
                                                    </div>
                                                </ion-col>
                                                <ion-col size-xs="8" size-lg="9">
                                                    <ion-grid>
                                                        <ion-row>
                                                            <ion-col size-xs="12" size-lg="8">
                                                                <div class="flight-details">
                                                                    <div class="airline">
                                                                        <h3>Delta</h3>
                                                                    </div>
                                                                    <div class="flight-duration">
                                                                        <h2>23:40 - 6:27 +1</h2>
                                                                        <h3>5h 47m</h3>
                                                                    </div>
                                                                    <div class="flight-airports">
                                                                        <h3>Martes 5 de Marzo</h3>
                                                                    </div>
                                                                    <div class="flight-airports">
                                                                        <h3>Origen: (BOG) El Dorado - Bogotá</h3>
                                                                    </div>
                                                                    <div class="flight-airports">
                                                                        <h3>Destino: (JFK) J. F. Kennedy - Nueva York
                                                                        </h3>
                                                                    </div>
                                                                </div>
                                                            </ion-col>
                                                            <ion-col size-xs="12" size-lg="4">
                                                                <div class="price-details">
                                                                    <h1>$1'495.000</h1>
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
                                                                        alt="delta-airlines" src="./img/delta.png" />
                                                                    <h3>Delta 254</h3>
                                                                </div>
                                                                <div class="flight-airline-details">
                                                                    <ion-badge slot="start" color="dark">123</ion-badge>
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
                                                                        alt="boeing" src="./img/airbus.png" />
                                                                    <h3>
                                                                        Airbus A320-100 (Jet de fuselaje angosto)
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
                    </ion-grid>
                </ion-content>
            </div>
        </ion-app>
        <script>
            const ionMenu = document.querySelector('ion-menu');
            const mainContent = document.getElementById('main-content');

            function closeWithBtn() {
                if (window.innerWidth > 768) {
                    mainContent.style.transition = 'transform 0.3s ease, width 0.3s ease, boxShadow 0.3s ease';
                    mainContent.style.width = '100%';
                    mainContent.style.transform = 'translateX(0)';
                    ionMenu.style.boxShadow = 'unset';
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