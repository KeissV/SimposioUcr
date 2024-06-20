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
                                                    ¿Pregunta 1?
                                                </button>
                                            </h5>
                                        </div>

                                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                . Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            </div>
                                        </div>
                                    </div>


                                    <div class="card">
                                        <div class="card-header" id="headingTwo">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    ¿Pregunta 2?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-header" id="headingTree">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTree" aria-expanded="false" aria-controls="collapseTree">
                                                    ¿Pregunta 3?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseTree" class="collapse" aria-labelledby="headingTree" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header" id="headingFour">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                    ¿Pregunta 4?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header" id="headingFive">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                                    ¿Pregunta 5?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header" id="headingSix">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                                    ¿Pregunta 6?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">

                                        <div class="card-header" id="headingSeven">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                                    ¿Pregunta 7?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">

                                        <div class="card-header" id="headingEight">
                                            <h5 class="mb-0">
                                                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                                                    ¿Pregunta 8?
                                                </button>
                                            </h5>
                                        </div>
                                        <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#faqAccordion">
                                            <div class="card-body">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
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
