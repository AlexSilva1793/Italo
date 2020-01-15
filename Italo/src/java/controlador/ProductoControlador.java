/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
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
        
        ProductoVO productoVO = new ProductoVO(idProducto, nombre, descripcion, precio);
        ProductoDAO productoDAO = new ProductoDAO(productoVO);

        switch (opcion) {
            case 1: //Registrar Producto
                if (productoDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "<script>alert('El producto fue registrado correctamente');</script>");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "<script>alert('El producto no pudo ser registrado');</script>");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                break;
            case 2://Consultar Producto por Id
                break;
            case 3://Actualizar Producto
                break;
            case 4://Eliminar Producto
                if (productoDAO.eliminarRegistro()) {
                    request.setAttribute("mensajeExito", "<script>alert('El producto fue borrado correctamente');</script>");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "<script>alert('El producto no pudo ser borrado');</script>");
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
