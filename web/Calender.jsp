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
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                            <a class="nav-link" href="Home.jsp">Inicio</a>
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
        </nav>
        <div class="p">
            <div class="pict">
                <img src="pictures/bn.png" class="fullscreen-image" alt="Imagen UCR">
            </div>
            <div class="separator-bar"></div>
        </div>
        <div class="container mt-5">
            <h1 class="text-center title-section">Calendario</h1>
            <h2 style="text-align: center">Feha en formato preferido</h2>
            <div class="event"  id="event-1">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento1.jpg" alt="Imagen del Evento 1">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 1</h2>
                    <p><strong>Hora del Evento:</strong> 10:00 AM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 1.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento1.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento1.com">Inscribirse</a></p>
                </div>
            </div>
            <div class="event" id="event-2">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento2.jpg" alt="Imagen del Evento 2">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 2</h2>
                    <p><strong>Hora del Evento:</strong> 1:00 PM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 2.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento2.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento2.com">Inscribirse</a></p>
                </div>
            </div>
            <!-- Agrega más eventos aquí de la misma manera -->

            <div class="event" id="event-3">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento2.jpg" alt="Imagen del Evento 2">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 2</h2>
                    <p><strong>Hora del Evento:</strong> 1:00 PM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 2.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento2.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento2.com">Inscribirse</a></p>
                </div>
            </div>
           
            <div class="event"id="event-4">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento2.jpg" alt="Imagen del Evento 2">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 2</h2>
                    <p><strong>Hora del Evento:</strong> 1:00 PM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 2.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento2.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento2.com">Inscribirse</a></p>
                </div>
            </div>
            <div class="separator-bar"></div>
            <h2 style="text-align: center">Feha 2 en formato preferido</h2>
            <div class="event" id="event-5">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento1.jpg" alt="Imagen del Evento 1">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 1</h2>
                    <p><strong>Hora del Evento:</strong> 10:00 AM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 1.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento1.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento1.com">Inscribirse</a></p>
                </div>
            </div>
            <div class="event" id="event-6">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento2.jpg" alt="Imagen del Evento 2">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 2</h2>
                    <p><strong>Hora del Evento:</strong> 1:00 PM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 2.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento2.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento2.com">Inscribirse</a></p>
                </div>
            </div>
            <!-- Agrega más eventos aquí de la misma manera -->

            <div class="event" id="event-7">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento2.jpg" alt="Imagen del Evento 2">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 2</h2>
                    <p><strong>Hora del Evento:</strong> 1:00 PM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 2.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento2.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento2.com">Inscribirse</a></p>
                </div>
            </div>

            <div class="event" id="event-8">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento2.jpg" alt="Imagen del Evento 2">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 2</h2>
                    <p><strong>Hora del Evento:</strong> 1:00 PM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 2.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento2.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento2.com">Inscribirse</a></p>
                </div>
            </div>

            <div class="separator-bar"></div>

            <h2 style="text-align: center">Feha 3 en formato preferido</h2>
            <div class="event" id="event-9">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento1.jpg" alt="Imagen del Evento 1">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 1</h2>
                    <p><strong>Hora del Evento:</strong> 10:00 AM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 1.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento1.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento1.com">Inscribirse</a></p>
                </div>
            </div>
            <div class="event" id="event-10">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento2.jpg" alt="Imagen del Evento 2">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 2</h2>
                    <p><strong>Hora del Evento:</strong> 1:00 PM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 2.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento2.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento2.com">Inscribirse</a></p>
                </div>
            </div>
            <!-- Agrega más eventos aquí de la misma manera -->

            <div class="event" id="event-11">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento2.jpg" alt="Imagen del Evento 2">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 2</h2>
                    <p><strong>Hora del Evento:</strong> 1:00 PM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 2.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento2.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento2.com">Inscribirse</a></p>
                </div>
            </div>

            <div class="event" id="event-12">
                <div class="event-image">
                    <img src="url_de_la_imagen_evento2.jpg" alt="Imagen del Evento 2">
                </div>
                <div class="event-content">
                    <h2>Nombre del Evento 2</h2>
                    <p><strong>Hora del Evento:</strong> 1:00 PM</p>
                    <p><strong>Información acerca de la actividad:</strong> Descripción del evento 2.</p>
                    <p><strong>Presentadores y encargados:</strong> Nombre de los encargados.</p>
                    <p><strong>Contacto:</strong> contacto@evento2.com</p>
                    <p><strong>Enlace a formulario de inscripción:</strong> <a href="enlace_formulario_evento2.com">Inscribirse</a></p>
                </div>
            </div>
        </div>
        <!-- Scripts de Bootstrap y dependencias -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <footer class="footer">

            <p>&copy; 2024 UCR SIMPOSIO INFORMATICA EMPRESARIAL. </p>

        </footer>
    </body>
</html>