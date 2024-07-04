<%@page import="Files.Inscriptions"%>
<%@page import="java.io.StringWriter"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.BufferedReader, java.io.FileReader, java.io.PrintWriter, java.io.FileWriter, java.util.ArrayList, java.util.List, java.util.Map, java.util.TreeMap"%>
<%@page import="Files.EmailService"%>
<%@page import="Files.Encrypted"%>

<%
    // Crear instancia de la clase Encrypted
    Encrypted encrypted = new Encrypted();

    
    String registerFilePath = "C:/Users/Jordy vindas/OneDrive - Universidad de Costa Rica/Documentos/NetBeansProjects/SimposioUcr/register.txt";
    BufferedReader registerReader = new BufferedReader(new FileReader(registerFilePath));
    String registerLine;
    boolean userFound = false;

    while ((registerLine = registerReader.readLine()) != null) {
        String[] userDetails = registerLine.split(",");

        // Desencriptar datos del usuario
        String decryptedUserName = encrypted.decrypt(userDetails[1]);
        String decryptedPassword = encrypted.decrypt(userDetails[2]);

        // Verificar si las credenciales coinciden
        if (decryptedUserName.equals(session.getAttribute("usuarioLogueado"))) {
            session.setAttribute("nombre", encrypted.decrypt(userDetails[0]));
            session.setAttribute("idNumber", encrypted.decrypt(userDetails[3]));
            session.setAttribute("email", encrypted.decrypt(userDetails[2]));
            userFound = true;
            break;
        }
    }
    registerReader.close();

    if (!userFound) {
        response.sendRedirect("Login.jsp?message=No%20se%20encontraron%20los%20datos%20del%20usuario.");
        return;
    }

   
    if (request.getMethod().equalsIgnoreCase("POST")) {
        String eventId = request.getParameter("eventId");
        String eventName = request.getParameter("eventName");
        String userName = (String) session.getAttribute("nombre");
        String idNumber = (String) session.getAttribute("idNumber");
        String email = (String) session.getAttribute("email");

        
        String emailPattern = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
        if (!email.matches(emailPattern)) {
            out.println("<script>alert('El email no es válido: " + email + "');</script>");
        } else {
          
            String inscripcionesFilePath = application.getRealPath("/WEB-INF/inscripciones.txt");
            try (PrintWriter writer = new PrintWriter(new FileWriter(inscripcionesFilePath, true))) {
                writer.println(eventId + "|" + eventName + "|" + userName + "|" + idNumber + "|" + email);
            }

           
            Inscriptions inscripciones = new Inscriptions();
            if (inscripciones.saveInscripcion(email, userName, idNumber, eventId, eventName)) {
                out.println("<script>alert('Inscripción guardada exitosamente.');</script>");
            } else {
                out.println("<script>alert('Error al guardar la inscripción.');</script>");
            }

            
            String subject = "Confirmación de Inscripción";
            String message = "Usted se ha inscrito correctamente al evento: " + eventName;


            try {
                String result = EmailService.sendEmail(email, subject, message);
                 out.println("<script>alert('Resultado del envío del correo: " + result + "');</script>");
                out.println("<script>alert('Correo de confirmación enviado exitosamente a: " + email + "');</script>");
                
                  
                String encryptedEmail = encrypted.encrypt(email);
                String encryptedUserName = encrypted.encrypt(userName);
                String encryptedIdNumber = encrypted.encrypt(idNumber);

                String encryptedFilePath = application.getRealPath("C:/Users/Jordy vindas/OneDrive - Universidad de Costa Rica/Documentos/NetBeansProjects/SimposioUcr/inscripciones_encrypted.txt");
                try (PrintWriter writer = new PrintWriter(new FileWriter(encryptedFilePath, true))) {
                    writer.println(encryptedUserName + "|" + encryptedIdNumber + "|" + encryptedEmail);
                }
                
            } catch (Exception e) {
                e.printStackTrace();
                StringWriter sw = new StringWriter();
                e.printStackTrace(new PrintWriter(sw));
                String exceptionAsString = sw.toString();
                out.println("<script>alert('Se ha enviado la confirmación a su correo electrónico');</script>");
            }
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calendario</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="CSSClasses/Calender.css">
    <link href="CSSClasses/nav.css" rel="stylesheet">
</head>
<body>
<%
    // Leer el archivo de eventos
    String filePath = application.getRealPath("/WEB-INF/events.txt");
    BufferedReader reader = new BufferedReader(new FileReader(filePath));
    String line;
    List<String[]> events = new ArrayList<>();

    while ((line = reader.readLine()) != null) {
        String[] eventDetails = line.split("\\|");
        events.add(eventDetails);
    }
    reader.close();

    
    Map<String, List<String[]>> eventsByDate = new TreeMap<>(); 
    for (String[] event : events) {
        String eventDate = event[5];
        if (!eventsByDate.containsKey(eventDate)) {
            eventsByDate.put(eventDate, new ArrayList<>());
        }
        eventsByDate.get(eventDate).add(event);
    }
%>

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
                            <h8>Contraste de color :</h8>
                            <a class="dropdown-item" href="#">Normal</a>
                            <a class="dropdown-item" href="#">Escala de Azules</a>
                            <a class="dropdown-item" href="#">Alto contraste</a>
                            <a class="dropdown-item" href="#">Fondo claro</a>
                            <h8>Tamaño de Fuente:</h8>
                            <a class="dropdown-item" href="#">Pequeña</a>
                            <a class="dropdown-item" href="#">Mediana</a>
                            <a class="dropdown-item" href="#">Grande</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link nav-text" href="Home.jsp">Inicio</a>
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

    <div id="carouselExampleIndicators" class="carousel slide container" data-ride="carousel">
        <br/><br/><br/>
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="pictures/IMG_4942.jpg" class="d-block w-100" alt="Slide 1">
            </div>
            <div class="carousel-item">
                <img src="pictures/IMG_4907.jpg" class="d-block w-100" alt="Slide 2">
            </div>
            <div class="carousel-item">
                <img src="pictures/IMG_4947.jpg" class="d-block w-100" alt="Slide 3">
            </div>
        </div>
       
    </div>

    <div class="container mt-5">
        <h1 class="text-center title-section">Calendario</h1>
        <%
            int eventId = 1;
            for (String eventDate : eventsByDate.keySet()) {
        %>
        <div class="separator-bar"></div>
            <h2 style="text-align: center"><%= eventDate %></h2>
        <%
                List<String[]> eventsOnDate = eventsByDate.get(eventDate);
                for (String[] event : eventsOnDate) {
        %>
            <div class="event" id="event-<%= eventId %>">
                <div class="event-image">
                    <img src="<%= event[6] %>" alt="Imagen del <%= event[0] %>">
                </div>
                <div class="event-content">
                    <h2><%= event[0] %></h2>
                    <p><strong>Hora del Evento:</strong> <%= event[1] %></p>
                    <p><strong>Información acerca de la actividad:</strong> <%= event[2] %></p>
                    <p><strong>Presentadores y encargados:</strong> <%= event[3] %></p>
                    <p><strong>Contacto:</strong> <%= event[4] %></p>
                    <p><strong>Enlace a formulario de inscripción:</strong>
                        <form action="Calender.jsp" method="post" style="display:inline;">
                            <input type="hidden" name="eventId" value="<%= eventId %>">
                            <input type="hidden" name="eventName" value="<%= event[0] %>">
                            <button type="submit" class="btn btn-primary">Inscribirse</button>
                        </form>
                    </p>
                </div>
            </div>
        <%
                    eventId++;
                }
            }
        %>
    </div>

    <!-- Scripts de Bootstrap y dependencias -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <footer class="footer">
        <p>&copy; 2024 UCR SIMPOSIO INFORMATICA EMPRESARIAL.</p>
    </footer>
</body>
</html>