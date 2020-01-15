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
    </head>
    <body>
        
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
        
    </body>
</html>
