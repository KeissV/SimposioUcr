<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calendario</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="CSSClasses/Calender.css">
    </head>
    <body>
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
                                <a class="dropdown-item" href="#">Normal</a>
                                <a class="dropdown-item" href="#">Escala de Azules</a>
                                <a class="dropdown-item" href="#">Alto contraste</a>
                                <a class="dropdown-item" href="#">Fondo claro</a>
                                <a class="dropdown-item" href="#">Pequeña</a>
                                <a class="dropdown-item" href="#">Mediana</a>
                                <a class="dropdown-item" href="#">Grande</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-text" href="Home.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-text" href="Downloads.jsp">Descargas</a>
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
                            <a class="nav-link nav-text" href="Login.jsp">
                                <img src="pictures/icons8-nombre-48 (1).png" alt="Botón de sesión" width="40" height="40">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="p">
            <div class="pict">
                <img src="pictures/bn.png" class="fullscreen-image" alt="Imagen UCR">
            </div>
            <div class="separator-bar"></div>
        </div>
        <div class="container mt-5">
            <h4 class="text-center title-section">Calendario</h4>
            <div class="calendar-events-container mt-5">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card-event">
                            <div class="event-date-bar">Fecha del Evento 1</div>
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento1.jpg" class="card-img-top" alt="Imagen del Evento 1">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 1</h5>
                                    </div>
                                </div>
                                <div class="card-event-back">
                                    <div class="card-body">
                                        <h5 class="card-title">Información adicional del Evento 1</h5>
                                        <p class="card-text">Más detalles sobre el evento 1...</p>
                                        <a href="Day1.jsp" class="btn btn-primary">Ver más</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card-event">
                            <div class="event-date-bar">Fecha del Evento 2</div>
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento2.jpg" class="card-img-top" alt="Imagen del Evento 2">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 2</h5>
                                    </div>
                                </div>
                                <div class="card-event-back">
                                    <div class="card-body">
                                        <h5 class="card-title">Información adicional del Evento 2</h5>
                                        <p class="card-text">Más detalles sobre el evento 2...</p>
                                        <a href="Day2.jsp" class="btn btn-primary">Ver más</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card-event">
                            <div class="event-date-bar">Fecha del Evento 3</div>
                            <div class="card-event-inner">
                                <div class="card-event-front">
                                    <img src="img/evento3.jpg" class="card-img-top" alt="Imagen del Evento 3">
                                    <div class="card-body">
                                        <h5 class="card-title">Título del evento 3</h5>
                                    </div>
                                </div>
                                <div class="card-event-back">
                                    <div class="card-body">
                                        <h5 class="card-title">Información adicional del Evento 3</h5>
                                        <p class="card-text">Más detalles sobre el evento 3...</p>
                                        <a href="Day3.jsp" class="btn btn-primary">Ver más</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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