 <%-- 
    Document   : registrar
    Created on : 16 may. 2024, 09:51:53
    Author     : Jordy
--%>

<%@ page import="Files.Request, Files.Encrypted" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

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
                background: url('pictures/Imagen de WhatsApp 2024-06-10 a las 01.50.48_35fc9572.jpg') no-repeat center center fixed;
                background-size: cover;
                font-family: Arial, sans-serif;
                font-size: 18px;
            }
            .container {
                width: 340px;
                margin: 50px auto;
                padding: 20px;
                background-color: #00c0f3;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                margin-bottom: 15px;
                background: #00c0f3;
                border-radius: 10px;
                padding: 30px;
                box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
            }
            h2 {
                text-align: center;
                color: #333;
            }
            form {
                display: flex;
                flex-direction: column;
                
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
            }
            button {
                min-height: 38px;
                border-radius: 2px;
                font-size: 15px;
                font-weight: bold;
                color: #fff;
                background-color: #005da4;
                border-color: #005da4de;
            }
            button:hover {

                background-color: #005da4de;
                border-color: #005da4de;
            }
        </style>
    </head>

    <body>

    <div class="container">
        <h2>Contactenos</h2>
        <form action="Contacts.jsp" method="POST">

            <label for="name">Nombre completo:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Correo electronico:</label>
            <input type="email" id="email" name="email" required>

            <label for="phone">Numero de telefono:</label>
            <input type="tel" id="phone" name="phone">

            <label for="message">Mesaje:</label>
            <textarea id="message" name="message" rows="5" required></textarea>

            <button type="submit">Enviar solicitud</button>
        </form>
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