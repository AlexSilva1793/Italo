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
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <div class="container">
                <a href="index.jsp" class="navbar-brand"> Productos Italo</a>
            </div>
        </nav>
        <div class="container p-4">
            <div  class="row">
                <div class="col-md-4">
                    <h2>Ingresa un producto</h2>
                    <div class="card card-body">
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
                </div>
                <% if (request.getAttribute(
                            "mensajeError") != null) {  %> 
                ${mensajeError}
                <% } else { %>
                ${mensajeExito}
                <% }%>


                <div class="col-md-8">
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
            </div>
        </div>
        <!-- Scripts -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    </body>
</html>
