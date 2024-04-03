<%@page import="com.emergentes.registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    registro est = (registro)request.getAttribute("miobjest");
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro</title>
    
</head>
<body>
    <h1>Editar</h1>
    <form action="MainServlet" method="post">
        <table>
            <tr>
                <td>id</td>
                <td><input type="text" name="id" value="<%= est.getId() %>" readonly></td>
            </tr>
            <tr>
                <td>Nombre</td>
                <td><input type="text" name="nom_ape" value="<%= est.getNom() %>"></td>
            </tr>
            <tr>
                <td>P1(30)</td>
                <td><input type="number" name="p1" value="<%= est.getP1() %>"></td>
            </tr>
            <tr>
                <td>P2(30)</td>
                <td><input type="number" name="p2" value="<%= est.getP2() %>"></td>
            </tr>
            <tr>
                <td>EF(40)</td>
                <td><input type="number" name="p3" value="<%= est.getP3() %>"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="enviar"></td>
            </tr>
        </table>
    </form>
</body>
</html>
