/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.ProductoDAO;
import modeloVO.ProductoVO;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ProductoControlador", urlPatterns = {"/Producto"})
public class ProductoControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String idProducto = request.getParameter("txtIdProducto");
        String nombre = request.getParameter("txtNombre");
        String descripcion = request.getParameter("txtDescripcion");
        String precio = request.getParameter("txtPrecio");
        String color = request.getParameter("txtColor");

        ProductoVO productoVO = new ProductoVO(idProducto, nombre, descripcion, precio,color);
        ProductoDAO productoDAO = new ProductoDAO(productoVO);

        switch (opcion) {
            case 1: //Registrar Producto
                if (productoDAO.agregarRegistro()) {
                    
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else {
                    
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                break;
            case 2://Consultar Producto por Id
                ArrayList<ProductoVO> producto = productoDAO.consultarRegistro();
                request.setAttribute("producto", producto);
                RequestDispatcher dispatcher = request.getRequestDispatcher("actualizar.jsp");
                dispatcher.forward(request, response);
                break;
            case 3://Actualizar Producto
                if (productoDAO.actualizarRegistro()) {
                    
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else {
                    
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                break;
            case 4://Eliminar Producto
                if (productoDAO.eliminarRegistro()) {
                    
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else {
                    
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                break;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
