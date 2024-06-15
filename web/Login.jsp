<%-- 
    Document   : Login
    Created on : 9 jun. 2024, 23:01:19
    Author     : franc
--%>

<%@page import="Files.Users, Files.Encrypted"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Simposio UCR 2024</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="CSSClasses/Login.css">
    </head>
    <body style="background-image: url('pictures/Imagen de WhatsApp 2024-06-10 a las 01.50.48_35fc9572.jpg'); 
          background-repeat: no-repeat; background-position: center center; background-attachment: fixed; background-size: cover;">
    </body>

    <body>
        <div class="login-form">
            <form action="Login.jsp" method="post">
                <h2 class="text-center">Iniciar Sesión</h2>
                <div class="form-group">
                    <input type="text" class="form-control" name="usuario" placeholder="Usuario" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="contrasena" placeholder="Contraseña" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-purple btn-block">Iniciar sesión</button>
                </div>
                <div class="form-group">
                    <a href="Register.jsp" class="btn btn-purple btn-block">Registrarse</a>
                </div>
            </form>
            <%
                if ("POST".equalsIgnoreCase(request.getMethod())) {
                    Users lg = new Users();
                    try {
                        // Obtener los datos del formulario
                        String user = request.getParameter("usuario");
                        String password = request.getParameter("contrasena");

                        // Intentar el login con los datos ingresados
                        if (lg.loginuser(password, user)) {
                            session.setAttribute("usuarioLogueado", user);
                            response.sendRedirect("index.jsp");
                        } else {
                            request.setAttribute("loginError", "Usuario o contraseña incorrectos.");
                            request.getRequestDispatcher("Login.jsp").forward(request, response);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        request.setAttribute("loginError", "Error en el sistema: " + e.getMessage());
                        request.getRequestDispatcher("Login.jsp").forward(request, response);
                    }
                }
            %>

        </div>
    </body>
</html>
