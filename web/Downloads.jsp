<%-- 
    Document   : Downloads
    Created on : 10 jun. 2024, 01:09:43
    Author     : franc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simposio UCR 2024 - Downloads</title>
        <link rel="stylesheet" href="CSSClasses/Downloads.css">
        <link href="CSSClasses/nav.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .file-container {
                display: flex;
                flex-direction: column;
                align-items: center;
                margin-top: 100px; /* Ajustar el margen superior */
            }

            .file-item {
                background-color: #f9f9f9;
                border: 1px solid #ddd;
                border-radius: 5px;
                margin-bottom: 10px;
                padding: 10px;
                width: 80%;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .file-item p {
                margin: 0;
                font-family: Arial, sans-serif;
                font-size: 14px;
            }

            .file-item button {
                background-color: rgba(0, 93, 164, 0.8);
                color: white;
                border: none;
                padding: 5px 10px;
                border-radius: 3px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .file-item button:hover {
                background-color: rgba(0, 93, 164, 0.6);
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
                justify-content: space-between;
                padding-top: 80px; /* Añadir padding-top para que el contenido se muestre debajo del header */
            }

            .navbar-custom {
                background-color: rgba(0, 93, 164, 0.8);
                position: fixed; /* Cambiar a fixed para que el header se quede en la parte superior */
                top: 0;
                width: 100%;
                z-index: 1;
            }

            .navbar-nav .nav-link {
                font-family: Arial, sans-serif;
                font-size: 15px;
                color: white !important;
            }

            .navbar-nav .nav-link.nav-text {
                font-size: 17px;
                color: white !important;
                margin-top: auto;
                margin-bottom: auto;
                padding-top: 16px;
                padding-bottom: 10px;
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
                                <a class="nav-link dropdown-toggle nav-text" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                                <a class="nav-link nav-text" href="Home.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-text" href="Calender.jsp">Calendario</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-text" href="History.jsp">Historia</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-text" href="Questions.jsp">Preguntas</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link nav-text" href="Contacts.jsp">Contactos</a>
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

        <!-- Contenedor de archivos -->
        <div class="file-container">
            <%
                // Ruta relativa de la carpeta Downloads dentro del directorio del proyecto web
                String downloadsPath = application.getRealPath("/Downloads");
                File folder = new File(downloadsPath);

                // Verifica si la carpeta existe y es un directorio
                if (folder.exists() && folder.isDirectory()) {
                    // Obtiene la lista de archivos en la carpeta Downloads
                    File[] listOfFiles = folder.listFiles();

                    // Itera sobre la lista de archivos
                    if (listOfFiles != null) {
                        for (File file : listOfFiles) {
                            if (file.isFile()) {
            %>
                                <div class="file-item">
                                    <p><%= file.getName() %></p>
                                    <a href="Downloads/<%= file.getName() %>" download>
                                        <button>Descargar</button>
                                    </a>
                                </div>
            <%
                            }
                        }
                    } else {
                        out.println("<p>No se encontraron archivos en la carpeta Downloads.</p>");
                    }
                } else {
                    out.println("<p>La carpeta Downloads no existe.</p>");
                }
            %>
        </div>

        <!-- Scripts de Bootstrap y dependencias -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <footer class="footer">
            <div class="container text-center">
                <p>&copy; 2024 UCR SIMPOSIO INFORMATICA EMPRESARIAL. </p>
            </div>
        </footer>
    </body>
</html>



