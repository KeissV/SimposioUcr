<%-- 
    Document   : Downloads
    Created on : 10 jun. 2024, 01:09:43
    Author     : franc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%
    if (session == null || session.getAttribute("usuarioLogueado") == null) {
        response.sendRedirect("Login.jsp?message=Debe%20iniciar%20sesion%20para%20continuar.");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Simposio UCR 2024 - Downloads</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSSClasses/Downloads.css">
        <link rel="stylesheet" href="CSSClasses/nav.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <style>
            body {
                display: flex;
                flex-direction: column;
                min-height: 100vh;
                font-family: Arial, sans-serif;
            }

            .content {
                flex: 1;
                padding-top: 80px;
                padding: 20px;
                background-color: #f8f9fa;
            }

            .header {
                text-align: center;
                margin-bottom: 30px;
            }

            .header h1 {
                font-size: 2.5em;
                margin: 0;
                color: #005da4;
            }

            .file-container {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .file-item {
                background-color: #ffffff;
                border: 1px solid #ddd;
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                margin-bottom: 15px;
                padding: 15px;
                width: 100%;
                max-width: 800px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                transition: transform 0.2s;
            }

            .file-item:hover {
                transform: translateY(-5px);
            }

            .file-item p {
                margin: 0;
                font-size: 16px;
                flex-grow: 1;
                display: flex;
                align-items: center;
            }

            .file-item p i {
                margin-right: 10px;
                color: #005da4;
            }

            .file-item button {
                background-color: #005da4;
                color: white;
                border: none;
                padding: 10px 15px;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .file-item button:hover {
                background-color: #004080;
            }

            @media (max-width: 768px) {
                .file-item {
                    flex-direction: column;
                    align-items: flex-start;
                }

                .file-item p {
                    margin-bottom: 10px;
                }

                .file-item button {
                    width: 100%;
                }
            }
        </style>
    </head>
    <body>
        <!-- Barra de Navegación -->
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
                                <h8>Contraste de color:</h8>
                                <a class="dropdown-item" href="#">Normal</a>
                                <a class="dropdown-item" href="#">Escala de Azules</a>
                                <a class="dropdown-item" href="#">Alto contraste</a>
                                <a class="dropdown-item" href="#">Fondo claro</a>
                                <h8>Tamaño de Fuente:</h8>
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
                                <img src="pictures/logg.png" alt="Botón de sesión" width="40" height="40">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Contenido Principal -->
        <div class="content container">
            <br/> <br/> <br/> <br/>
            <div class="file-container">
                <%
                    String downloadsPath = application.getRealPath("/Downloads");
                    File folder = new File(downloadsPath);

                    if (folder.exists() && folder.isDirectory()) {
                        File[] listOfFiles = folder.listFiles();
                        if (listOfFiles != null) {
                            for (File file : listOfFiles) {
                                if (file.isFile()) {
                %>
                <div class="file-item">
                    <p><i class="fas fa-file-alt"></i><%= file.getName()%></p>
                    <a href="Downloads/<%= file.getName()%>" download>
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
        </div>

        <!-- Pie de Página -->
        <footer class="footer">
            <div class="container text-center">
                <p>&copy; 2024 UCR SIMPOSIO INFORMATICA EMPRESARIAL.</p>
            </div>
        </footer>

        <!-- Scripts de Bootstrap y dependencias -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>




