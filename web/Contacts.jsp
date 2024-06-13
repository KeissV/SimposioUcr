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
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
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
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <h1>Registro de Contacto</h1>
    <div class="container">
        <h1>Contáctenos</h1>
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