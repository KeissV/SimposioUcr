<%-- 
    Document   : index
    Created on : 7 jun. 2024, 19:39:43
    Author     : franc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Simposio Ucr 2024</title>
        <!-- Enlace a Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

        <!-- Estilos personalizados -->
        <style>
            .navbar-custom {
                background-color: rgba(255, 255, 255, 0.8);
                position: absolute;
                top: 0;
                width: 100%;
                z-index: 1;
            }
            .fullscreen-image {
                width: 100%;
                height: 100vh;
                object-fit: cover;
                object-position: top;
            }
            .text-container {
                margin-top: -100vh;
                padding-top: 100vh;
            }
            .navbar-nav .nav-link {
                font-family: Arial, sans-serif;
                font-size: 18px;
                color: rgb(65, 173, 231) !important;
            }

            .carousel-inner {
                display: flex;
                flex-wrap: nowrap;
                overflow-x: auto;
            }
            .carousel-item {
                width: auto !important;
                min-width: 400px; /* Ajusta el ancho mínimo de cada imagen */
            }
        </style>

   
</head>
<body>
    <!-- Barra de Navegación Bootstrap -->
    <nav class="navbar navbar-expand-lg navbar-light navbar-custom">
        <div class="container-fluid">
            <div class="d-flex w-100 justify-content-between">

                <!-- Logos de la UCR -->
                <a class="navbar-brand" href="#">
                    <img src="pictures/firma-ucr-ico.png" alt="logo Ucr" width="150" height="80"/>
                    <img src="pictures/images-removebg-preview.png" alt="" width="130" height="60"/>
                </a>


                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Contenido de la barra de navegación -->
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Calender.jsp">Calendario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Historia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Preguntas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contactos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Descargas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Login.jsp">
                                
                              
                                <img src="pictures/icons8-user-48.png" alt="Botón de Registro" width="40" height="40">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
  
    <!-- Contenido principal -->
    <div class="p">
        <div class="pict">
            <!-- Imagen local -->
            <img src="pictures/Golfito 7.jpg" class="fullscreen-image" alt="Imagen Ucr">

        </div>
       
        <div class="t">
            <br/>
            <div class="container-fluid">
                <h3 class="text-left">¿Qué es un Simposio?</h3>
                <p class="text-left">Un simposio es un evento académico o profesional donde expertos 
                    y participantes interesados se reúnen para discutir y compartir 
                    conocimientos sobre un tema específico. Su propósito principal
                    es el intercambio de información, la presentación de investigaciones
                    y la promoción del debate. Los simposios suelen incluir presentaciones
                    o ponencias seguidas de sesiones de preguntas y respuestas, debates
                    y discusiones. Participan académicos, investigadores, profesionales 
                    del área y, en algunos casos, estudiantes o público general.</p>
            </div>
        </div>

        <!-- Carrusel de imágenes -->
       <div id="carouselExampleControls" class="carousel slide mt-5" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="pictures/Golfito.jpg" class="d-block" alt="..." style="width: 200px; height: auto;">
        </div>
        <div class="carousel-item">
            <img src="pictures/Golfito.jpg" class="d-block" alt="..." style="width: 200px; height: auto;">
        </div>
          <div class="carousel-item active">
            <img src="pictures/Golfito.jpg" class="d-block" alt="..." style="width: 200px; height: auto;">
        </div>
        <div class="carousel-item">
            <img src="pictures/Golfito.jpg" class="d-block" alt="..." style="width: 200px; height: auto;">
        </div>
          <div class="carousel-item active">
            <img src="pictures/Golfito.jpg" class="d-block" alt="..." style="width: 200px; height: auto;">
        </div>
        <div class="carousel-item">
            <img src="pictures/Golfito.jpg" class="d-block" alt="..." style="width: 200px; height: auto;">
        </div>
          <div class="carousel-item active">
            <img src="pictures/Golfito.jpg" class="d-block" alt="..." style="width: 200px; height: auto;">
        </div>
        <div class="carousel-item">
            <img src="pictures/Golfito.jpg" class="d-block" alt="..." style="width: 200px; height: auto;">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

        </div>
</body>
</html>
    