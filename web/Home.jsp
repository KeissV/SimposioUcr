<%-- 
    Document   : home
    Created on : 7 jun. 2024, 19:39:43
    Author     : franc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Simposio UCR 2024</title>
        <!-- Enlace a Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="CSSClasses/Home.css">
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
                                <a class="nav-link" href="Calender.jsp">Calendario</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Downloads.jsp">Descargas</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="History.jsp">Historia</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Questions.jsp">Preguntas</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Contacts.jsp">Contactos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Login.jsp">
                                    <img src="pictures/icons8-test-account-100.png" alt="Botón de sesión" width="40" height="40">
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
                <img src="pictures/bn.png" class="fullscreen-image" alt="Imagen UCR">
            </div>
            <div class="separator-bar"></div>
            <div class="t">
                <div class="text-left">
                    <h3 class="text-Ti">Simposio Informatica Empresarial 2024</h3>
                    <p class="text-Ta"> Lorem ipsum dolor sit amet consectetur adipiscing elit eu erat etiam sodales, litora vel iaculis netus donec non aliquam cras laoreet nulla. 
                        Non eget cum auctor dictum elementum per in, est pharetra fringilla iaculis purus cras mus lacinia, blandit gravida pretium quis enim taciti.
                        Rhoncus senectus commodo lobortis tempus at scelerisque, turpis vel odio fermentum fusce cursus habitasse vestibulum condimentum.
                        Potenti tincidunt quisque porta facilisis lobortis rhoncus ultricies blandit, nostra porttitor duis conubia habitasse suspendisse auctor, quam vivamus phasellus torquent pretium non facilisi.</p>
                </div>
                <br/>
                <br/>
            </div>


            <h5 class="text-center title-section">Presentadores</h5>

            <div id="presentersCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="carousel-title">Bloque 1</div>
                        <div class="d-flex justify-content-center">
                            <!-- Primer bloque de presentadores -->
                            <div class="card mx-3" style="width: 15rem;">
                                <img src="pictures/userrr.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Título 1</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="card mx-3" style="width: 15rem;">
                                <img src="pictures/userrr.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Título 2</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="card mx-3" style="width: 15rem;">
                                <img src="pictures/userrr.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Título 3</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="card mx-3" style="width: 15rem;">
                                <img src="pictures/userrr.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Título 4</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-title">Bloque 2</div>
                        <div class="d-flex justify-content-center">
                            <!-- Segundo bloque de presentadores -->
                            <div class="card mx-3" style="width: 15rem;">
                                <img src="pictures/userrr.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Título 5</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="card mx-3" style="width: 15rem;">
                                <img src="pictures/userrr.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Título 6</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="card mx-3" style="width: 15rem;">
                                <img src="pictures/userrr.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Título 7</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                            <div class="card mx-3" style="width: 15rem;">
                                <img src="pictures/userrr.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Título 8</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Controles del carrusel -->
                <a class="carousel-control-prev" href="#presentersCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#presentersCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <br/>
            <br/>
            <br/>

            <h5 class="text-center title-section">Eventos</h5>
            <div class="calendar-events-container">
                <!-- Columnas de eventos -->
                <div class="row">
                    <div class="col-md-6">
                        <!-- Columna 1 -->
                        <div class="card-event">
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento1.jpg" class="card-img-top" alt="Imagen del Evento 1">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 1</h5>
                                    </div>
                                </div>                                <div class="card-event-back">
                                    <h5 class="card-title"> evento 1</h5>
                                    <p class="card-text center">Más información sobre el evento 1...</p>
                                    <a href="#" class="btn btn-primary">Ver más</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-event">
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="pictures/giraCeles.png" class="card-img-top" alt="Imagen del Evento 1">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 3</h5>
                                    </div>
                                </div>
                                <div class="card-event-back">
                                    <h5 class="card-title"> evento 3</h5>
                                    <p class="card-text center">Más información sobre el evento 3...</p>
                                    <a href="#" class="btn btn-primary">Ver más</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-event">
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento1.jpg" class="card-img-top" alt="Imagen del Evento 1">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 5</h5>
                                    </div>
                                </div>                                <div class="card-event-back">
                                    <h5 class="card-title"> evento 5</h5>
                                    <p class="card-text center">Más información sobre el evento 5...</p>
                                    <a href="#" class="btn btn-primary">Ver más</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-event">
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento1.jpg" class="card-img-top" alt="Imagen del Evento 1">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 7</h5>
                                    </div>
                                </div>
                                <div class="card-event-back">
                                    <h5 class="card-title"> evento 7</h5>
                                    <p class="card-text center">Más información sobre el evento 7...</p>
                                    <a href="#" class="btn btn-primary">Ver más</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-event">
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento1.jpg" class="card-img-top" alt="Imagen del Evento 1">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 9</h5>
                                    </div>
                                </div>                                <div class="card-event-back">
                                    <h5 class="card-title"> evento 9</h5>
                                    <p class="card-text center">Más información sobre el eventooooooooooooooooooo, </p>
                                    <a href="#" class="btn btn-primary">Ver más</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <!-- Columna 2 -->
                        <div class="card-event">
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento1.jpg" class="card-img-top" alt="Imagen del Evento 1">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 2</h5>
                                    </div>
                                </div>
                                <div class="card-event-back">
                                    <h5 class="card-title">evento 2</h5>
                                    <p class="card-text center"> detalws evento 2...</p>
                                    <a href="#" class="btn btn-primary">Ver más</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-event">
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento1.jpg" class="card-img-top" alt="Imagen del Evento 1">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 4</h5>
                                    </div>
                                </div>
                                <div class="card-event-back">
                                    <h5 class="card-title">l evento 4</h5>
                                    <p class="card-text center"> evento 4...</p>
                                    <a href="#" class="btn btn-primary">Ver más</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-event">
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento1.jpg" class="card-img-top" alt="Imagen del Evento 1">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 6</h5>
                                    </div>
                                </div>
                                <div class="card-event-back">
                                    <h5 class="card-title"> evento 6</h5>
                                    <p class="card-text center"> evento 6...</p>
                                    <a href="#" class="btn btn-primary">Ver más</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-event">
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento1.jpg" class="card-img-top" alt="Imagen del Evento 1">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 8</h5>
                                    </div>
                                </div>                                <div class="card-event-back">
                                    <h5 class="card-title"> evento 8</h5>
                                    <p class="card-text center">Más información sobre el evento 8...</p>
                                    <a href="#" class="btn btn-primary">Ver más</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-event">
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento1.jpg" class="card-img-top" alt="Imagen del Evento 1">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 10</h5>
                                    </div>
                                </div>
                                <div class="card-event-back">
                                    <h5 class="card-title"> evento 10</h5>
                                    <p class="card-text center">Más información sobre el evento 10...</p>
                                    <a href="#" class="btn btn-primary">Ver más</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Enlace a Bootstrap JS y dependencias -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
    <br>
    <br>
    <footer class="footer">
        <div class="container text-center">
            <p>&copy; 2024 UCR SIMPOSIO INFORMATICA EMPRESARIAL. </p>
        </div>
    </footer>
</html>

