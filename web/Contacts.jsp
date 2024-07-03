<%-- 
    Document   : registrar
    Created on : 16 may. 2024, 09:51:53
    Author     : Jordy
--%>

<%@ page import="Files.Request, Files.Encrypted" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%
    if (session == null || session.getAttribute("usuarioLogueado") == null) {
        response.sendRedirect("Login.jsp?message=Debe%20iniciar%20sesion%20para%20continuar.");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Contacto</title>
        <style>
            body {
                height: 100%;
                margin: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                background: url('pictures/nuevoFondo.png') no-repeat center center fixed;
                background-size: cover;
                font-family: Arial, sans-serif;
                font-size: 18px;
            }
            .content {
                display: flex;
                flex-direction: column;
                align-items: center;
                width: 90%;
                max-width: 900px;
                margin-top: 50px;
            }
            .form-container {
                display: flex;
                flex-direction: column;
                align-items: center;
                background-color: rgba(142, 216, 248, 0.75);
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
                width: 100%;
                max-width: 600px;
            }
            .form-content {
                display: flex;
                flex-direction: column;
                align-items: center;
                width: 100%;
            }
            @media (min-width: 768px) {
                .form-container {
                    flex-direction: row;
                    justify-content: space-between;
                    align-items: flex-start;
                }
                .contact-info {
                    width: 40%;
                    margin-top: 0;
                    margin-left: 20px;
                }
                form {
                    width: 55%;
                }
            }
            h2, h3 {
                text-align: center;
                color: #333;
            }
            form {
                display: flex;
                flex-direction: column;
                width: 100%;
            }
            label {
                margin-bottom: 5px;
                color: #333;
            }
            input, textarea {
                margin-bottom: 15px;
                padding: 10px;
                font-size: 16px;
                border: 1px solid #ccc;
                border-radius: 5px;
                width: 100%;
                box-sizing: border-box;
            }
            button {
                min-height: 38px;
                border-radius: 2px;
                font-size: 15px;
                font-weight: bold;
                color: #fff;
                background-color: #005da4;
                border-color: #005da4de;
                cursor: pointer;
            }
            button:hover {
                background-color: #005da4de;
                border-color: #005da4de;
            }
            .contact-info {
                font-size: 17px;
                font-family: Arial, sans-serif;
                width: 100%;
                text-align: center;
                margin-top: 20px;
            }
            .contact-info p {
                color: #333;
                font-size: 17px;
                margin: 5px 0;
            }
        </style>
    </head>

    <body>
        <div class="content">
            <div class="form-container">
                <form action="Contacts.jsp" method="POST">
                    <h2>Contáctenos</h2>
                    <label for="name">Nombre completo:</label>
                    <input type="text" id="name" name="name" required>

                    <label for="email">Correo electrónico:</label>
                    <input type="email" id="email" name="email" required>

                    <label for="phone">Número de teléfono:</label>
                    <input type="tel" id="phone" name="phone">

                    <label for="message">Mensaje:</label>
                    <textarea id="message" name="message" rows="5" required></textarea>

                    <button type="submit">Enviar solicitud</button>
                </form>
                <div class="contact-info">
                    <h3>Información de Contacto de los Organizadores</h3>
                    <p><strong>Correo Electrónico:</strong> organizadores@simposio.com</p>
                    <p><strong>Número de Teléfono:</strong> +123 456 7890</p>
                </div>
            </div>
        </div>

        <%
            Encrypted encrypted = new Encrypted();
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String message = request.getParameter("message");

            if (name != null && email != null && message != null) {
                String nameEnc = encrypted.encrypt(name);
                String emailEnc = encrypted.encrypt(email);
                String phoneEnc = phone != null ? encrypted.encrypt(phone) : null;
                String messageEnc = encrypted.encrypt(message);

                Request gc = new Request();
                boolean save = gc.saverequests(nameEnc, emailEnc, phoneEnc, messageEnc);
            }
        %>
    </body>
</html>
