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

    private String idProducto = "", nombre = "", descripcion = "", precio = "";

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
        } catch (Exception e) {
            System.out.println("Error" + e.toString());
        }
    }

    @Override
    public boolean agregarRegistro() {
        try {
            query = "INSERT INTO producto (idProducto,nombre,descripcion,precio) VALUES (NULL,'" + nombre + "','" + descripcion + "','" + precio + "')";

            statement.executeUpdate(query);
            operacion = true;
        } catch (Exception e) {
            System.out.println("Error al registrar el Producto " + e.toString());
        }
        return operacion;
    }

    @Override
    public ArrayList consultaGeneral() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public static void main(String[] args) {
        ProductoVO productoVO = new ProductoVO("", "botilito", "metalico negro", "20000");
        ProductoDAO productoDAO = new ProductoDAO(productoVO);
        productoDAO.agregarRegistro();
    }
}
