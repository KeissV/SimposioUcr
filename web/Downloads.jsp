<%-- 
    Document   : Downloads
    Created on : 10 jun. 2024, 01:09:43
    Author     : franc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simposio UCR 2024</title>
        <link rel="stylesheet" href="CSSClasses/Downloads.css">
        <link href="CSSClasses/nav.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .navbar-custom {
                background-color: rgba(0, 93, 164, 0.8);
                position: absolute;
                top: 0;
                width: 100%;
                z-index: 1;
            }

            .navbar-nav .nav-link {
                font-family: Arial, sans-serif;
                font-size: 15px;
                color: white !important;
            }

            .dropdown-menu {
                font-family: Arial, sans-serif;
                font-size: 14px;
                background-color: rgba(0, 93, 164, 0.8);
                color: white;
                border: none;
                padding: 0;
                box-shadow: none;
                min-width: 200px;
            }

            .dropdown-item {
                color: white;
                padding: 10px 20px;
                transition: background-color 0.3s ease, color 0.3s ease;
            }

            .dropdown-item:hover {
                background-color: rgba(0, 93, 164, 0.6);
            }

            .dropdown-section-title {
                font-size: 15px;
                color: white;
                margin-top: 10px;
                margin-bottom: 5px;
                padding-left: 20px;
                display: block;
            }

            .dropdown-section-title + .dropdown-item {
                margin-top: 5px;
            }

            .text-Ta {
                font-size: 16px;
            }

            .t {
                font-family: Arial, sans-serif;
                font-size: 15px;
                width: 85%;
                margin: auto;
            }

            .footer {
                background-color: rgba(0, 93, 164, 0.8);
                color: white;
                position: relative;
                width: 100%;
                text-align: center;
                padding: 20px 0;
                font-family: Arial, sans-serif;
                font-size: 15px;
            }

            .footer p {
                margin: 0;
                color: white;
            }

            html, body {
                height: 100%;
            }

            body {
                display: flex;
                flex-direction: column;

                .navbar-nav .nav-link.nav-text {
                    font-size: 17px;
                    color: white !important;
                    margin-top: auto;
                    margin-bottom: auto;
                    padding-top: 16px;
                    padding-bottom: 10px;
                }

            </style>
        </head>
        <body>
            <!-- Barra de Navegación  -->
            <nav class="navbar navbar-expand-lg navbar-light navbar-custom">
                <div class="container-fluid">
                    <div class="d-flex w-100 justify-content-between">
                        <!-- Logos de la UCR -->
                        <a class="navbar-brand">
                            <img src="pictures/logos.png" alt="logos UCR" width="303.7" height="60.1"/>
                        </a>

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <!-- Contenido de la barra de navegación -->
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle  nav-text" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Accesibilidad
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <h8> Contraste de color :</h8>
                                        <a class="dropdown-item" href="#">Normal</a>
                                        <a class="dropdown-item" href="#">Escala de Azules</a>
                                        <a class="dropdown-item" href="#">Alto contraste</a>
                                        <a class="dropdown-item" href="#">Fondo claro</a>

                                        <h8> Tamaño de Fuente:</h8>
                                        <a class="dropdown-item" href="#">Pequeña</a>
                                        <a class="dropdown-item" href="#">Mediana</a>
                                        <a class="dropdown-item" href="#">Grande</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link  nav-text" href="Home.jsp">Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link  nav-text" href="Calender.jsp">Calendario</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link  nav-text" href="History.jsp">Historia</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link  nav-text" href="Questions.jsp">Preguntas</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link  nav-text" href="Contacts.jsp">Contactos</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Login.jsp">
                                        <img src="pictures/icons8-nombre-48 (1).png" alt="Botón de sesión" width="40" height="40">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>



            <!-- Scripts de Bootstrap y dependencias -->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        </body>
        <br>
        <br>
        <br>
        <br>
        <footer class="footer">
            <div class="container text-center">
                <p>&copy; 2024 UCR SIMPOSIO INFORMATICA EMPRESARIAL. </p>
            </div>
        </footer>
    </html>
