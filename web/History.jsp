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
</head>
<body>
    <!-- Barra de Navegación Bootstrap -->
    <nav class="navbar navbar-expand-lg navbar-light navbar-custom">
        <div class="container-fluid">
            <div class="d-flex w-100 justify-content-between">
                <!-- Logos de la UCR -->
                <a class="navbar-brand" href="#">
                    <img src="pictures/firma-ucr-ico.png" alt="logo UCR" width="130" height="60"/>
                    <img src="pictures/images-removebg-preview.png" alt="" width="95" height="40"/>
                    <img src="pictures/SSUR.png" alt="Logo Sede" width="130" height="54"/>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </div>
    </nav>
    <main>
        <section id="historia" class="section-bg">
            <div class="container">
                <article>
                    <h2>Información histórica y relevante sobre la sede del simposio</h2>
                    <p>
                        La sede del simposio, construida en <%= request.getAttribute("fechaConstruccion") %>, es un edificio emblemático con una arquitectura que refleja <%= request.getAttribute("estiloArquitectonico") %>. Este lugar ha sido testigo de numerosos eventos culturales y académicos, convirtiéndose en un símbolo de <%= request.getAttribute("importanciaCultural") %>.
                    </p>
                    <p>
                        A lo largo de los años, la sede ha albergado importantes conferencias, exposiciones y simposios, destacándose por su diseño innovador y su capacidad para adaptarse a las necesidades de eventos de gran envergadura.
                    </p>
                </article>
                <article>
                    <h2>Fotografías y anécdotas destacadas</h2>
                    <div class="gallery">
                        <figure>
                            <img src="<%= request.getAttribute("rutaImagen1") %>" alt="Descripción de la imagen 1">
                            <figcaption><%= request.getAttribute("anecdota1") %></figcaption>
                        </figure>
                        <figure>
                            <img src="<%= request.getAttribute("rutaImagen2") %>" alt="Descripción de la imagen 2">
                            <figcaption><%= request.getAttribute("anecdota2") %></figcaption>
                        </figure>
                        <!-- Añadir más imágenes según sea necesario -->
                    </div>
                </article>
            </div>
        </section>
    </main>
    <footer>
        <div class="container">
            <p>&copy; 2024 Simposio de Informática Empresarial. Todos los derechos reservados.</p>
        </div>
    </footer>
</body>
</html>
