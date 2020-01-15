<%-- 
    Document   : actualizar
    Created on : 15/01/2020, 11:45:53 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Producto</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <div class="container">
                <a href="index.jsp" class="navbar-brand"> Productos Italo</a>
            </div>
        </nav>

        <div>
            <h2>Actualiza los datos del producto</h2>
            <form>
                <table>
                    <tr>
                        <th>
                            Nombre del Producto<br>
                            <input type="text" name="txtNombre" value="<c:out value="${producto.get(0).nombre}"></c:out>" required><br><br>
                                Descripcion del Producto<br>
                                <input type="text" name="txtDescripcion" value="<c:out value="${producto.get(0).descripcion}"></c:out>" required><br><br>
                                Precio del Producto<br>
                                <input type="text" name="txtPrecio" value="<c:out value="${producto.get(0).precio}"></c:out>" required><br><br>
                            <input type="hidden" name="txtIdProducto" value="<c:out value="${producto.get(0).idProducto}"></c:out>" >
                        </th>
                    </tr>
                </table><br>
                <button>Actualizar Producto</button>
                <input type="hidden" name="opcion" value="3">
            </form>
        </div>
        <!-- Scripts -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    </body>
</html>
