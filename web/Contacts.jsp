<%-- 
    Document   : registrar
    Created on : 16 may. 2024, 09:51:53
    Author     : Jordy
--%>

<%@ page import="Files.Documents, Files.Encrypted" %>
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
            <h2>Contáctenos</h2>
            <form action="Contacts.jsp" method="POST">
                
                <label for="nombre">Nombre Completo:</label>
                <input type="text" id="nombre" name="nombre" required>

                <label for="correo">Correo Electrónico:</label>
                <input type="email" id="correo" name="correo" required>

                <label for="telefono">Número de Teléfono:</label>
                <input type="tel" id="telefono" name="telefono">

                <label for="mensaje">Mensaje:</label>
                <textarea id="mensaje" name="mensaje" rows="5" required></textarea>

                <button type="submit">Enviar</button>
            </form>
        </div>

        <%
            Encrypted encrypted = new Encrypted();
            String nombre = request.getParameter("nombre");
            String correo = request.getParameter("correo");
            String telefono = request.getParameter("telefono");
            String mensaje = request.getParameter("mensaje");

            if (nombre != null && correo != null && mensaje != null) {
                String nombreEnc = encrypted.encrypt(nombre);
                String correoEnc = encrypted.encrypt(correo);
                String telefonoEnc = telefono != null ? encrypted.encrypt(telefono) : null;
                String mensajeEnc = encrypted.encrypt(mensaje);

                Documents gc = new Documents();
                boolean bandera = gc.saverequests(nombreEnc, correoEnc, telefonoEnc, mensajeEnc);

            }
        %>
    </body>

</html>