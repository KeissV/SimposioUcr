<%-- 
    Document   : history
    Created on : 10 jun. 2024, 01:05:49
    Author     : franc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Historia del Lugar - Simposio de Informática Empresarial</title>
        <link rel="stylesheet" href="CSSClasses/History.css">
        <!-- Enlace a Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
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
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                                <a class="nav-link" href="index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Calender.jsp">Calendario</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Downloads.jsp">Descargas</a>
                            </li>
                         
                            <li class="nav-item">
                                <a class="nav-link" href="Questions.jsp">Preguntas</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Contacts.jsp">Contactos</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Login.jsp">
                                    <img src="pictures/icons8-test-account-100.png"" alt="Botón de sesión" width="40" height="40">
                                </a>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
        </nav>


        <main>
            <section id="historia" class="section-bg">
                <div class="container">
                    <article>
                        <h2>Información histórica y relevante sobre la sede del simposio</h2>
                        <p>
                            La sede del simposio, construida en <%= request.getAttribute("fechaConstruccion")%>, es un edificio emblemático con una arquitectura que refleja <%= request.getAttribute("estiloArquitectonico")%>. Este lugar ha sido testigo de numerosos eventos culturales y académicos, convirtiéndose en un símbolo de <%= request.getAttribute("importanciaCultural")%>.
                        </p>
                        <p>
                            A lo largo de los años, la sede ha albergado importantes conferencias, exposiciones y simposios, destacándose por su diseño innovador y su capacidad para adaptarse a las necesidades de eventos de gran envergadura.
                        </p>
                    </article>
                    <article>
                        <h2>Fotografías y anécdotas destacadas</h2>
                        <div class="gallery">
                            <figure>
                                <img src="<%= request.getAttribute("rutaImagen1")%>" alt="Descripción de la imagen 1">
                                <figcaption><%= request.getAttribute("anecdota1")%></figcaption>
                            </figure>
                            <figure>
                                <img src="<%= request.getAttribute("rutaImagen2")%>" alt="Descripción de la imagen 2">
                                <figcaption><%= request.getAttribute("anecdota2")%></figcaption>
                            </figure>
                            <!-- Añadir más imágenes según sea necesario -->
                        </div>
                    </article>
                </div>
            </section>
        </main>

        <!-- Enlace a Bootstrap JS y dependencias -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
    <!-- Pie de Página -->
    <footer class="footer">
        <div class="container text-center">
            <p>&copy; 2024 UCR SIMPOSiO INFORMATICA EMPRESARIAL. </p>
        </div>
    </footer>
</html>
