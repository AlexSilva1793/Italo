/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloDAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import modeloVO.ProductoVO;
import util.Conexion;
import util.InterfaceCrud;

/**
 *
 * @author Admin
 */
public class ProductoDAO extends Conexion implements InterfaceCrud {

    private Connection connection = null;
    private Statement statement = null;
    private ResultSet resultSet = null;

    private String query = null;
    private boolean operacion = false;

    private String idProducto = "", nombre = "", descripcion = "", precio = "", color = "";

    public ProductoDAO() {
        try {
            connection = this.ObtenerConexion();
            statement = connection.createStatement();
        } catch (Exception e) {
            System.out.println("Error DAO " + e.toString());
        }
    }

    public ProductoDAO(ProductoVO productoVO) {
        super();
        try {
            connection = this.ObtenerConexion();
            statement = connection.createStatement();

            idProducto = productoVO.getIdProducto();
            nombre = productoVO.getNombre();
            descripcion = productoVO.getDescripcion();
            precio = productoVO.getPrecio();
            color = productoVO.getColor();
        } catch (Exception e) {
            System.out.println("Error" + e.toString());
        }
    }

    @Override
    public boolean agregarRegistro() {
        try {
            query = "INSERT INTO producto (idProducto,nombre,descripcion,precio,color) VALUES (NULL,'" + nombre + "','" + descripcion + "','" + precio + "','"+color+"')";

            statement.executeUpdate(query);
            operacion = true;
            CerrarConexion();
        } catch (Exception e) {
            System.out.println("Error al registrar el Producto " + e.toString());
        }
        return operacion;
    }

    @Override
    public ArrayList consultarRegistro() {
        ArrayList<ProductoVO> arrayProductos = new ArrayList<>();
        try {
            query = "SELECT * FROM producto WHERE producto.idProducto= " + idProducto;
            resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                ProductoVO productoTmp = new ProductoVO();

                productoTmp.setIdProducto(resultSet.getString(1));
                productoTmp.setNombre(resultSet.getString(2));
                productoTmp.setDescripcion(resultSet.getString(3));
                productoTmp.setPrecio(resultSet.getString(4));
                productoTmp.setColor(resultSet.getString(5));

                arrayProductos.add(productoTmp);
            }
        } catch (Exception e) {
            System.out.println("Error al consultar el Producto " + e.toString());
        }
        return arrayProductos;
    }

    @Override
    public ArrayList consultaGeneral() {
        ArrayList<ProductoVO> arrayProductos = new ArrayList<>();
        try {
            query = "SELECT * FROM producto ";
            resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                ProductoVO productoTmp = new ProductoVO();

                productoTmp.setIdProducto(resultSet.getString(1));
                productoTmp.setNombre(resultSet.getString(2));
                productoTmp.setDescripcion(resultSet.getString(3));
                productoTmp.setPrecio(resultSet.getString(4));
                productoTmp.setColor(resultSet.getString(5));

                arrayProductos.add(productoTmp);
            }
        } catch (Exception e) {
            System.out.println("Error al consultar los Productos " + e.toString());
        }
        return arrayProductos;
    }

    @Override
    public boolean actualizarRegistro() {

        try {
            query = "UPDATE producto SET nombre = '" + nombre + "',descripcion = '" + descripcion + "', precio = '" + precio + "',color = '"+color+"' WHERE producto.idProducto = " + idProducto + "";
            statement.executeUpdate(query);
            operacion = true;
            CerrarConexion();
        } catch (Exception e) {
            System.out.println("Error al actualizar el Producto " + e.toString());
        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        try {
            query = "DELETE FROM producto WHERE producto.idProducto = " + idProducto;
            statement.executeUpdate(query);
            operacion = true;
            CerrarConexion();
        } catch (Exception e) {
            System.out.println("Error al borrar el Producto " + e.toString());
        }
        return operacion;
    }

//    public static void main(String[] args) {
//        ProductoVO productoVO = new ProductoVO();
//        productoVO.setIdProducto("10");
//        ProductoDAO productoDAO = new ProductoDAO(productoVO);
//        
//        
//        System.out.println(productoDAO.consultaGeneral());
//    }
}
