<%-- 
    Document   : Downloads
    Created on : 10 jun. 2024, 01:09:43
    Author     : franc
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Simposio UCR 2024 - Downloads</title>
        <link rel="stylesheet" href="CSSClasses/Downloads.css">
        <link href="CSSClasses/nav.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <!-- Barra de Navegación  -->
        <nav class="navbar navbar-expand-lg navbar-light navbar-custom">
            <div class="container-fluid">
                <a class="navbar-brand">
                    <img src="pictures/logos.png" alt="logos UCR" width="303.7" height="60.1"/>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
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
                            <a class="nav-link nav-text" href="Map.jsp">Mapa</a>
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
                                <img src="pictures/logg.png" alt="Botón de sesión" width="40" height="40">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Contenedor de archivos -->
        <div class="file-container container">
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



