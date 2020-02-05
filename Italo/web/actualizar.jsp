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
                <a href="index.jsp" class="navbar-brand"> Productos Bicicleteria</a>
            </div>
        </nav>

        <!-- Formulario con estilos -->
        <br><br>
        <h2 class="text-center">Actualiza el producto</h2>
        <div class="container p-4">
            <div  class="row">
                
                <div class="card card-body">
                    <form method="post" action="Producto">

                        <div class="form-group">
                            <input type="text" name="txtNombre" class="form-control" value="<c:out value="${producto.get(0).nombre}"></c:out>" autofocus required>
                            </div>

                            <div class="form-group">
                                <textarea  name="txtDescripcion" class="form-control" row="2"  required><c:out value="${producto.get(0).descripcion}"></c:out></textarea>
                            </div>

                            <div class="form-group">
                                <input type="text" name="txtPrecio" class="form-control" value="<c:out value="${producto.get(0).precio}"></c:out>" required>
                            </div>
                            
                            <div class="form-group">
                                <input type="text" name="txtColor" class="form-control" value="<c:out value="${producto.get(0).color}"></c:out>" required><br><br>
                            </div>
                            
                            
                            <input type="hidden" name="txtIdProducto" value="<c:out value="${producto.get(0).idProducto}"></c:out>" >

                        <input type="hidden" name="opcion" value="3">
                        <input type="submit" class="btn btn-success btn-block" name="actualizarProducto" value="Actualizar Producto">
                    </form>
                </div>
            </div>
        </div>
        <!-- Scripts -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    </body>
</html>
