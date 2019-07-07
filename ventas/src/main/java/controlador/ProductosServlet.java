package controlador;

import conexion.Conexion;
import dao.ProductosDao;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ProductosBean;

/**
 *
 * @author Balmore
 */
public class ProductosServlet extends HttpServlet {
    Conexion conn = new Conexion();
    ProductosDao ptd = new ProductosDao(conn);
    RequestDispatcher rd;
    boolean respuesta;
    String msg;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "allProductos":
                allProductos(request, response);
                break;
        }
    }

    protected void allProductos(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<ProductosBean> lista = ptd.allProductos();
        request.setAttribute("lista", lista);
        rd = request.getRequestDispatcher("lis.jsp");
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
