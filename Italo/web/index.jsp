<%-- 
    Document   : index
    Created on : 14/01/2020, 07:30:27 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.ProductoDAO"%>
<%@page import="modeloVO.ProductoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos Italo</title>
        <%
            ProductoVO productoVO = new ProductoVO();
            ProductoDAO productoDAO = new ProductoDAO();
            ArrayList<ProductoVO> arrayProductos = productoDAO.consultaGeneral();
        %>
    </head>
    <body>
        <div>
            <h2>Ingresa un producto</h2>
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

        <div>
            <h2>Productos</h2>
            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Descripcion</th>
                    <th>Precio</th>
                    <th>Acciones</th>
                </tr>
                <%
                    for (int i = 0; i < arrayProductos.size(); i++) {
                        productoVO = arrayProductos.get(i);
                %>
                <tr>>
                    <td><%=productoVO.getNombre()%></td>
                    <td><%=productoVO.getDescripcion()%></td>
                    <td><%=productoVO.getPrecio()%></td>
                    <td><a href="Producto?opcion=2&txtIdProducto=<%=productoVO.getIdProducto()%>">Actualizar</a></td>
                    <td><a href="Producto?opcion=4&txtIdProducto=<%=productoVO.getIdProducto()%>">Eliminar</a></td>
                </tr>
                <%}%>
            </table>

        </div>
    </body>
</html>
