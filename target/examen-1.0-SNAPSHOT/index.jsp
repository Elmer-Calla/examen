<%@page import="com.emergentes.registro"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("listaper") == null) {
        ArrayList<registro> lista = new ArrayList<>();
        session.setAttribute("listaper", lista);
    }
    ArrayList<registro> lista = (ArrayList<registro>) session.getAttribute("listaper");
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro</title>

</head>
<body>
    <h2>PRIMER PARCIAL TEM-742</h2>
    <h2>Nombre: Elmer Calla Huayhua</h2>
    <h2>Carnet: 10071906</h2>
    <p>REGISTRO DE CALIFICACIONES</p>
    <form action="MainServlet" method="get">
        <input type="hidden" name="op" value="nuevo">
        <button type="submit">Nuevo</button>
    </form>
    <br>
    <table border="1">
        <thead>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>P1(30)</th>
                <th>P2(30)</th>
                <th>P3(40)</th>
                <th>Nota</th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <% 
                if (lista != null) {
                    for (registro item : lista) {
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getNom()%></td>
                <td><%= item.getP1() %></td>
                <td><%= item.getP2() %></td>
                <td><%= item.getP3() %></td>
                <td><%= item.getNota() %></td>
                <td><a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainServlet?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('Seguro que desea eliminar?')">Eliminar</a></td>
            </tr>
            <% 
                    }
                }
            %>
        </tbody>
    </table>
</body>
</html>
