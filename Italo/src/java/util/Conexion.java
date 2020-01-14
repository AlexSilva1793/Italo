/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class Conexion {

    public String driver, bd, url, user, pass;
    public Connection conn;

    public Conexion() {
        driver = "com.mysql.jdbc.Driver";
        bd = "Italo";
        user = "root";
        pass = "";
        url = "jdbc:mysql://localhost:3306/" + bd;
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url, user, pass);
            System.out.println("Conexion Establecida");
        } catch (Exception e) {
            System.out.println("Error al conectarse " + e);
        }
    }

    public Connection ObtenerConexion() {
        return conn;
    }

    public Connection CerrarConexion() throws SQLException {
        conn.close();
        conn = null;
        return conn;
    }

    public static void main(String[] args) {
        new Conexion();
    }
}
