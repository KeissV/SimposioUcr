<%@ page import="Files.Users, Files.Encrypted" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Simposio Ucr 2024</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="CSSClasses/Register.css">
    </head>
    <body style="background-image: url('pictures/Imagen de WhatsApp 2024-06-10 a las 01.50.48_35fc9572.jpg');
          background-repeat: no-repeat; background-position: center center; background-attachment: fixed; background-size: cover;">
    </body>
    <body>

        <div class="login-form">
            <form action="Register.jsp" method="post">
                <h2 class="text-center">Registro</h2>   
                <div class="form-group">
                    <input type="text" class="form-control" name="full_name" placeholder="Nombre completo" required="required">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="username" placeholder="Nombre de usuario" required="required">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" name="email" placeholder="Correo" required="required">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="id_number" placeholder="Número de identificación" required="required">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="institution" placeholder="Institución educativa" required="required">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="interest_area" placeholder="Área de interés" required="required">
                </div>
                <div class="form-group">
                    <select class="form-control" name="role" required="required">
                        <option value="">Seleccione su rol</option>
                        <option value="Profesor">Profesor</option>
                        <option value="Estudiante">Estudiante</option>
                    </select>
                </div>
                <div class="form-group">
                    <select class="form-control" name="participant_type" required="required">
                        <option value="">Tipo de participante</option>
                        <option value="Asistente">Asistente</option>
                        <option value="Ponente">Ponente</option>
                        <option value="Empresa">Empresa</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="password" placeholder="Contraseña" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="confirm_password" placeholder="Confirmar contraseña" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-purple btn-block">Confirmar</button>
                </div>
            </form>
        </div>

        <%
            if ("POST".equalsIgnoreCase(request.getMethod())) {
                Encrypted encrypted = new Encrypted();
                String fullName = request.getParameter("full_name");
                String username = request.getParameter("username");
                String email = request.getParameter("email");
                String idNumber = request.getParameter("id_number");
                String institution = request.getParameter("institution");
                String interestArea = request.getParameter("interest_area");
                String role = request.getParameter("role");
                String participantType = request.getParameter("participant_type");
                String password = request.getParameter("password");
                String confirmPassword = request.getParameter("confirm_password");

                if (password != null && password.equals(confirmPassword)) {
                    String encryptedFullName = encrypted.encrypt(fullName);
                    String encryptedUsername = encrypted.encrypt(username);
                    String encryptedEmail = encrypted.encrypt(email);
                    String encryptedIdNumber = encrypted.encrypt(idNumber);
                    String encryptedInstitution = encrypted.encrypt(institution);
                    String encryptedInterestArea = encrypted.encrypt(interestArea);
                    String encryptedRole = encrypted.encrypt(role);
                    String encryptedParticipantType = encrypted.encrypt(participantType);
                    String encryptedPassword = encrypted.encrypt(password);

                    Users userController = new Users();
                    boolean saveSuccess = userController.saveusers(encryptedFullName, encryptedUsername, encryptedEmail, encryptedIdNumber, encryptedInstitution, encryptedInterestArea, encryptedRole, encryptedParticipantType, encryptedPassword);
                    if (saveSuccess) {
                        session.setAttribute("message", "Usuario registrado exitosamente.");
                        response.sendRedirect("Login.jsp");
                    } else {
                        session.setAttribute("error", "No se pudo registrar al usuario.");
                        response.sendRedirect("Register.jsp");
                    }
                } else {
                    session.setAttribute("error", "Las contraseñas no coinciden.");
                    response.sendRedirect("Register.jsp");
                }
            }
        %>
    </body>
</html>