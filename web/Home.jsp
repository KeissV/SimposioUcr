<%-- 
    Document   : home
    Created on : 7 jun. 2024, 19:39:43
    Author     : franc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="List.Presenter" %>
<%@ page import="List.PresenterList" %>
<%@ page import="List.Node" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simposio UCR 2024</title>
    <!-- Enlace a Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="CSSClasses/nav.css" rel="stylesheet">
    <link rel="stylesheet" href="CSSClasses/Home.css">
    <link rel="stylesheet" href="CSSClasses/events.css">
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
                        <a class="nav-link nav-text" href="Calender.jsp">Calendario</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link nav-text" href="Map.jsp">Mapa</a>
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
                        <a class="nav-link" href="Login.jsp">
                            <img src="pictures/logg.png" alt="Botón de sesión" width="40" height="40">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

   
    <div class="p">
        <div class="pict">
            <!-- Imagen local -->
            <img src="pictures/bn.png" class="fullscreen-image img-fluid" alt="Imagen UCR">
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

        <h5 class="text-center title-section">Ponentes</h5>

        <%
            PresenterList presenterList = new PresenterList();
            presenterList.addPresenter(new Presenter("Agustin Fernandez ", "En "
                    + "el evento 1, abordará las últimas tendencias en "
                    + "transformación digital, mientras que en el evento 2, "
                    + "discutirá estrategias innovadoras para la gestión de "
                    + "proyectos tecnológicos.", "pictures/Agustin Fernandez.jpg"));
            presenterList.addPresenter(new Presenter("Arturo Ramirez ", "Presentará "
                    + "en el evento 3, donde hablará sobre las mejores prácticas "
                    + "en protección de datos y, en el evento 4, compartirá "
                    + "casos de estudio sobre la implementación de soluciones "
                    + "de seguridad en empresas líderes.", "pictures/Arturo Ramirez.jpeg"));
            presenterList.addPresenter(new Presenter("Jessica Pineda ", "En el evento 5, "
                    + "explorará el impacto de la inteligencia artificial en el "
                    + "desarrollo de software, y en el evento 6, ofrecerá una "
                    + "visión detallada sobre el futuro de la automatización en "
                    + "el entorno empresarial.", "pictures/Jessica Pineda.jpg"));
            presenterList.addPresenter(new Presenter("Mariana Corrales ", "Presentará en el evento 7 del Simposio de Informática Empresarial 2024, donde discutirá los desafíos y oportunidades en la integración de sistemas empresariales. En el evento 8, se centrará en la optimización de procesos mediante el uso de software ERP. ", "pictures/Mariana Perez.jpg"));
            presenterList.addPresenter(new Presenter("Luis Vindas ", "Presentará en el evento 9, donde hablará sobre la adopción de metodologías ágiles en equipos de desarrollo. En el evento 10, compartirá técnicas avanzadas para la gestión ágil de proyectos", "pictures/Luis Vindas.jpeg"));
            presenterList.addPresenter(new Presenter("Peter Hernández ", "Presentará en el evento 11 del Simposio de Informática Empresarial 2024, ofreciendo una charla sobre la creación de una cultura de innovación en las organizaciones. En el evento 12, discutirá cómo las empresas pueden utilizar tecnologías emergentes para mantenerse competitivas.", "pictures/Peter Hernández.jpeg"));
            presenterList.addPresenter(new Presenter("Sandra Díaz ", "En el evento 13, hablará sobre las mejores prácticas para la digitalización de operaciones", "pictures/Sandra Díaz.jpeg"));
            presenterList.addPresenter(new Presenter("Sofía Mora ", "Presentará en el evento 14 del Simposio de Informática Empresarial 2024, se centrará en el uso de grandes volúmenes de datos para la toma de decisiones empresariales", "pictures/Sofía Mora.jpeg"));

            Node currentNode = presenterList.getHead();
            int blockSize = 4;
            int index = 0;
        %>

        <div id="presentersCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <%
                    while (currentNode != null) {
                        if (index % blockSize == 0) {
                %>
                <div class="carousel-item <%= (index == 0) ? "active" : "" %>">
                    <div class="carousel-title">Bloque <%= (index / blockSize) + 1 %></div>
                    <div class="d-flex justify-content-center flex-wrap presenters-container">
                        <%
                            }
                            Presenter presenter = currentNode.getData();
                        %>
                        <div class="card mx-3 my-2" style="width: 15rem;">
    <img src="<%= presenter.getImagePath() %>" class="card-img-top presenter-image" alt="...">
    <div class="card-body">
        <h5 class="card-title"><%= presenter.getTitle() %></h5>
        <p class="card-text"><%= presenter.getDescription() %></p>
    </div>
</div>
                        <%
                            currentNode = currentNode.getNext();
                            index++;
                            if (index % blockSize == 0 || currentNode == null) {
                        %>
                    </div>
                </div>
                <%
                            }
                    }
                %>
            </div>
         
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
            <div class="container events-grid">
                <div class="card-event">
                    <div class="card-event-inner">
                        <div class="card-event-front">
                            <img src="pictures/giraCeles.png" class="card-img-top" alt="Imagen del Evento 1">
                            <div class="card-body">
                                <h5 class="card-title">Título del evento 1</h5>
                            </div>
                        </div>
                        <div class="card-event-back">
                            <h5 class="card-title">evento 1</h5>
                            <p class="card-text center">Más información sobre el evento 1...</p>
                            <a href="Calender.jsp#event-1" class="btn btn-primary">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="card-event">
                    <div class="card-event-inner">
                        <div class="card-event-front">
                            <img src="pictures/giraCeles.png" class="card-img-top" alt="Imagen del Evento 2">
                            <div class="card-body">
                                <h5 class="card-title">Título del evento 2</h5>
                            </div>
                        </div>
                        <div class="card-event-back">
                            <h5 class="card-title">evento 2</h5>
                            <p class="card-text center">Más información sobre el evento 2...</p>
                            <a href="Calender.jsp#event-2" class="btn btn-primary">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="card-event">
                    <div class="card-event-inner">
                        <div class="card-event-front">
                            <img src="pictures/giraCeles.png" class="card-img-top" alt="Imagen del Evento 3">
                            <div class="card-body">
                                <h5 class="card-title">Título del evento 3</h5>
                            </div>
                        </div>
                        <div class="card-event-back">
                            <h5 class="card-title">evento 3</h5>
                            <p class="card-text center">Más información sobre el evento 3...</p>
                            <a href="Calender.jsp#event-3" class="btn btn-primary">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="card-event">
                    <div class="card-event-inner">
                        <div class="card-event-front">
                            <img src="pictures/giraCeles.png" class="card-img-top" alt="Imagen del Evento 4">
                            <div class="card-body">
                                <h5 class="card-title">Título del evento 4</h5>
                            </div>
                        </div>
                        <div class="card-event-back">
                            <h5 class="card-title">evento 4</h5>
                            <p class="card-text center">Más información sobre el evento 4...</p>
                            <a href="Calender.jsp#event-4" class="btn btn-primary">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="card-event">
                    <div class="card-event-inner">
                        <div class="card-event-front">
                            <img src="pictures/giraCeles.png" class="card-img-top" alt="Imagen del Evento 5">
                            <div class="card-body">
                                <h5 class="card-title">Título del evento 5</h5>
                            </div>
                        </div>
                        <div class="card-event-back">
                            <h5 class="card-title">evento 5</h5>
                            <p class="card-text center">Más información sobre el evento 5...</p>
                            <a href="Calender.jsp#event-5" class="btn btn-primary">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="card-event">
                    <div class="card-event-inner">
                        <div class="card-event-front">
                            <img src="pictures/giraCeles.png" class="card-img-top" alt="Imagen del Evento 6">
                            <div class="card-body">
                                <h5 class="card-title">Título del evento 6</h5>
                            </div>
                        </div>
                        <div class="card-event-back">
                            <h5 class="card-title">evento 6</h5>
                            <p class="card-text center">Más información sobre el evento 6...</p>
                            <a href="Calender.jsp#event-6" class="btn btn-primary">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="card-event">
                    <div class="card-event-inner">
                        <div class="card-event-front">
                            <img src="pictures/giraCeles.png" class="card-img-top" alt="Imagen del Evento 7">
                            <div class="card-body">
                                <h5 class="card-title">Título del evento 7</h5>
                            </div>
                        </div>
                        <div class="card-event-back">
                            <h5 class="card-title">evento 7</h5>
                            <p class="card-text center">Más información sobre el evento 7...</p>
                            <a href="Calender.jsp#event-7" class="btn btn-primary">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="card-event">
                    <div class="card-event-inner">
                        <div class="card-event-front">
                            <img src="pictures/giraCeles.png" class="card-img-top" alt="Imagen del Evento 8">
                            <div class="card-body">
                                <h5 class="card-title">Título del evento 8</h5>
                            </div>
                        </div>
                        <div class="card-event-back">
                            <h5 class="card-title">evento 8</h5>
                            <p class="card-text center">Más información sobre el evento 8...</p>
                            <a href="Calender.jsp#event-8" class="btn btn-primary">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="card-event">
                    <div class="card-event-inner">
                        <div class="card-event-front">
                            <img src="pictures/giraCeles.png" class="card-img-top" alt="Imagen del Evento 9">
                            <div class="card-body">
                                <h5 class="card-title">Título del evento 9</h5>
                            </div>
                        </div>
                        <div class="card-event-back">
                            <h5 class="card-title">evento 9</h5>
                            <p class="card-text center">Más información sobre el evento 9...</p>
                            <a href="Calender.jsp#event-9" class="btn btn-primary">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="card-event">
                    <div class="card-event-inner">
                        <div class="card-event-front">
                            <img src="pictures/giraCeles.png" class="card-img-top" alt="Imagen del Evento 10">
                            <div class="card-body">
                                <h5 class="card-title">Título del evento 10</h5>
                            </div>
                        </div>
                        <div class="card-event-back">
                            <h5 class="card-title">evento 10</h5>
                            <p class="card-text center">Más información sobre el evento 10...</p>
                            <a href="Calender.jsp#event-10" class="btn btn-primary">Ver más</a>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    
</body>
<br>
<br>
<footer class="footer">
    <div class="container text-center">
        <p>&copy; 2024 UCR SIMPOSIO INFORMATICA EMPRESARIAL. </p>
    </div>
</footer>
</html>
