<%-- 
    Document   : questions
    Created on : 10 jun. 2024, 01:06:54
    Author     : franc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nueva Página</title>
        <!-- Enlace a Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <!-- Enlace a tu archivo CSS personalizado -->
      
        <link rel="stylesheet" href="CSSClasses/Questions.css">
    </head>
    <body>
        <div class="pre">
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
                                    <a class="nav-link" href="Home.jsp">Inicio</a>
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
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>

            <div class="container">
                <section class="faq-section">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <h3 class="section-title text-center">Preguntas Frecuentes</h3>
                                <br/>
                                <div class="accordion" id="faqAccordion">

                                    <div class="card">
                                        <div class="card-header" id="headingOne">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    ¿Cuándo y dónde se llevará a cabo el simposio?
                                                </button>
                                            </h5>
                                        </div>

                                        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                El simposio se realizará del [fecha de inicio] al [fecha de finalización] en la Universidad de Costa Rica Sede del Sur, ubicada en Golfito.
                                            </div>
                                        </div>
                                    </div>


                                    <div class="card">
                                        <div class="card-header" id="headingTwo">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    ¿Cuántas personas pueden asistir al simposio?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                El límite de cupos puede variar según la actividad. Puedes encontrar la capacidad máxima de asistentes en la información del evento de tu interés, en la página principal. Se recomienda registrarse pronto para asegurar tu lugar.
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-header" id="headingTree">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTree" aria-expanded="false" aria-controls="collapseTree">
                                                    ¿Cómo puedo registrarme para el simposio?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseTree" class="collapse" aria-labelledby="headingTree" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                ¡Es muy fácil! Puedes registrarte a través de nuestra página web en la esquina superior derecha, o bien haciendo <a href="Register.jsp">click acá</a>. 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header" id="headingFour">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                    ¿Cómo puedo inscribirme en una actividad?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Puedes encontrar los eventos en la página principal en la sección de “Eventos”. Selecciona el evento de tu interés y haz clic en “Inscribirme”. Cuando te registras en nuestra página web, debes indicar un nombre de usuario, el cual será necesario para inscribirte en los diferentes eventos del simposio. 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header" id="headingFive">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                                    ¿Hay señalización dentro de la sede para ayudarme a encontrar los diferentes eventos?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Sí, habrá señalización adecuada dentro de la sede para guiarte a los distintos eventos del simposio. Puedes también referirte al mapa de la sede en nuestra sección de “Mapa” para una mejor orientación.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header" id="headingSix">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                                    ¿Cómo puedo llegar al lugar del simposio?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Hay varias opciones de transporte disponibles para llegar al lugar del simposio. Los asistentes pueden utilizar taxis (el costo promedio en Golfito es de 1000 colones) o autobuses locales. Puedes obtener más información sobre los horarios de los autobuses en nuestra sección de <a href="Downloads.jsp">“Descargas”</a>.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">

                                        <div class="card-header" id="headingSeven">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                                    ¿Hay alojamiento disponible cerca del lugar del evento?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                ¡Claro! Puedes encontrar varias opciones de alojamiento cerca del lugar del simposio que recomendamos por su proximidad y conveniencia:
                                                <ul>
                                                    <li><a href="https://maps.app.goo.gl/3pZgca2vjrK3B2T17" target="_blank">Hotel Casa Roland</a></li>
                                                    <li><a href="https://maps.app.goo.gl/J9NbQzGd6rTtoXxN6" target="_blank">Hotel Samoa del Sur</a></li>
                                                    <li><a href="https://maps.app.goo.gl/3WbQW2oGHVpwzam67" target="_blank">Hotel y Restaurante Corcovado</a></li>
                                                    <li><a href="https://maps.app.goo.gl/ekCoBjR3DDeuSFqZ9" target="_blank">Black Snapper</a></li>
                                                    <li><a href="https://maps.app.goo.gl/vHz73DTxAC78mZHT8" target="_blank">Hotel El Tucan</a></li>
                                                    <li><a href="https://maps.app.goo.gl/nAfiQv9y1bFWgzLN9" target="_blank">Cabinas Golfito</a></li>
                                                </ul>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">

                                        <div class="card-header" id="headingEight">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                                                    ¿Cómo puedo orientarme una vez que llegue a Golfito?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Te recomendamos revisar el mapa de Golfito en nuestra sección de “Mapa” para familiarizarte con la ciudad y sus principales puntos de interés. También puedes descargar el mapa para tenerlo a mano durante tu estancia.
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="card">

                                        <div class="card-header" id="headingNine">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
                                                    ¿Cómo puedo desplazarme dentro de Golfito?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Puedes moverte por Golfito utilizando taxis locales, que generalmente cobran alrededor de 1000 colones, o utilizando autobuses locales. El mapa en nuestra sección de “Mapa” también incluye las principales rutas de autobuses.
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="card">

                                        <div class="card-header" id="headingTen">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
                                                    ¿Habrá actividades sociales o recreativas durante el simposio?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Sí, hemos organizado varias actividades sociales y recreativas para los asistentes, incluyendo un tour por Golfito. Consulta nuestro programa en la sección <a href="Calender.jsp">“Calendario”</a> para más detalles.
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="card">

                                        <div class="card-header" id="headingEleven">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseEleven" aria-expanded="false" aria-controls="collapseEleven">
                                                    ¿Cómo puedo obtener más información o asistencia?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseEleven" class="collapse" aria-labelledby="headingEleven" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Para cualquier consulta adicional, puedes contactarnos a través de nuestra sección <a href="Contacts.jsp">“Contactos”</a> en la página web. Responderemos lo antes posible.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <!-- Scripts de Bootstrap y dependencias -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>
    <br/>
    <br/>
    <footer class="footer">
        <div class="container text-center">
            <p>&copy; 2024 UCR SIMPOSiO INFORMATICA EMPRESARIAL.</p>
        </div>
    </footer>
</html>
