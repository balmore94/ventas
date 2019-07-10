/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import conexion.Conexion;
import dao.ComprasDao;
import dao.ContactosDao;
import dao.ProductosDao;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ContactosBean;
import modelo.ProductosBean;

/**
 *
 * @author Balmore
 */
public class ComprasServlet extends HttpServlet {
    
    Conexion conn = new Conexion();
    ComprasDao cod = new ComprasDao(conn); 
    RequestDispatcher rd;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "nuevaCompra":
                nuevaCompra(request, response);
                break;
        }
    }

    protected void nuevaCompra(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int tipo = Integer.parseInt(request.getParameter("tipo"));
        ContactosDao ctd = new ContactosDao(conn);
        ProductosDao ptd = new ProductosDao(conn);
        List<ContactosBean> select = ctd.selectContactos(tipo);
        List<ProductosBean> lista = ptd.allProductos();
        request.setAttribute("select", select);
        request.setAttribute("lista", lista);
        rd = request.getRequestDispatcher("registroCompra.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
