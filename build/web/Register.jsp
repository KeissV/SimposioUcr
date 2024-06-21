<%-- 
    Document   : Register
    Created on : 9 jun. 2024, 23:01:56
    Author     : franc
--%>
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
                    <input type="text" class="form-control" name="first_name" placeholder="Nombre" required="required">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="last_name" placeholder="Apellido" required="required">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="username" placeholder="Nombre de usuario" required="required">
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
                String firstName = request.getParameter("first_name");
                String lastName = request.getParameter("last_name");
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String confirmPassword = request.getParameter("confirm_password");

                if (password != null && password.equals(confirmPassword)) {
                    String encryptedFirstName = encrypted.encrypt(firstName);
                    String encryptedLastName = encrypted.encrypt(lastName);
                    String encryptedUsername = encrypted.encrypt(username);
                    String encryptedPassword = encrypted.encrypt(password);

                    Users userController = new Users();
                    boolean saveSuccess = userController.saveusers(encryptedFirstName, encryptedLastName, encryptedUsername, encryptedPassword);
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
