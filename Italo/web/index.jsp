<%-- 
    Document   : index
    Created on : 14/01/2020, 07:30:27 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos Italo</title>
    </head>
    <body>
        <div>
            <h1>Ingresa un producto</h1>
            <form method="post" action="Producto">
                <table>
                    <tr>
                        <th>
                            Nombre del Producto<br>
                            <input type="text" name="txtNombre" required><br><br>
                            Descripcion del Producto<br>
                            <input type="text" name="txtDescripcion" required><br><br>
                            Precio del Producto<br>
                            <input type="text" name="txtPrecio" required><br><br>
                        </th>
                    </tr>
                </table><br>
                <button>Registrar Producto</button>
                <input type="hidden" name="opcion" value="1">
            </form>
        </div>
        <% if (request.getAttribute(
                    "mensajeError") != null) {  %> 
        ${mensajeError}
        <% } else { %>
        ${mensajeExito}
        <% }%>
        <br><br>
    </body>
</html>
