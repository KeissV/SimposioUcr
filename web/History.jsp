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
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="pictures/logos.png" alt="logos UCR" width="303.7" height="60.1"/>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
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
                            <img src="pictures/icons8-test-account-100.png" alt="Botón de sesión" width="40" height="40">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <!-- Primera sección: Imagen a la izquierda, texto a la derecha -->
            <div class="col-md-6">
                <img src="pictures/azu.png" alt="Imagen 1" class="img-fluid">
            </div>
            <div class="col-md-6">
                <h2>Título de la sección</h2>
                <p>Texto sobre la historia de la universidad...</p>
            </div>
        </div>

        <div class="row mt-5">
            <!-- Segunda sección: Texto a la izquierda, imagen a la derecha -->
            <div class="col-md-6 order-md-2">
                <img src="pictures/azu.png" alt="Imagen 2" class="img-fluid">
            </div>
            <div class="col-md-6 order-md-1">
                <h2>Otro título de sección</h2>
                <p>Texto adicional sobre la historia...</p>
            </div>
        </div>
    </div>

    <!-- Enlace a Bootstrap JS y dependencias -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Pie de Página -->
    <footer class="footer">
        <div class="container text-center">
            <p>&copy; 2024 UCR SIMPOSiO INFORMATICA EMPRESARIAL. </p>
        </div>
    </footer>
</body>
</html>
