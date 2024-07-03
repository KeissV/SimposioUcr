<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="Files.Users"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Simposio UCR 2024</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="CSSClasses/Login.css">
    </head>
    <body style="background-image: url('pictures/nuevoFondo.png'); 
          background-repeat: no-repeat; background-position: center center; background-attachment: fixed; background-size: cover;">
        <br/>
        <br/>
        <br/>
        <div class="login-form">
            <form action="Login.jsp" method="post">
                <h2 class="text-center">Iniciar Sesion</h2>
                <% 
                    String message = request.getParameter("message");
                    if (message != null) { 
                %>
                    <div class="alert alert-warning">
                        <%= message %>
                    </div>
                <% } %>
                <% if (session.getAttribute("loginError") != null) { %>
                    <div class="alert alert-danger">
                        <%= session.getAttribute("loginError") %>
                    </div>
                    <%
                        session.removeAttribute("loginError");
                    %>
                <% } %>
                <div class="form-group">
                    <input type="text" class="form-control" name="usuario" placeholder="Usuario" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="contrasena" placeholder="Contrasena" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-purple btn-block">Iniciar sesion</button>
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
                            session.setAttribute("loginError", "Usuario o contrasena incorrectos.");
                            response.sendRedirect("Login.jsp");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        session.setAttribute("loginError", "Error en el sistema: " + e.getMessage());
                        response.sendRedirect("Login.jsp");
                    }
                }
            %>
        </div>
    </body>
</html>