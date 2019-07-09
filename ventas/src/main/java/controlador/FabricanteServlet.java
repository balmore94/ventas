package controlador;

import conexion.Conexion;
import dao.FabricanteDao;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.FabricanteBean;

public class FabricanteServlet extends HttpServlet {

    Conexion conn = new Conexion();
    FabricanteDao fad = new FabricanteDao(conn);
    RequestDispatcher rd;
    boolean respuesta;
    String msg;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "allFabricantes":
                allFabricantes(request, response);
                break;
            case "mostrarEditar":
                mostrarEditar(request, response);
                break;
        }
    }

    protected void allFabricantes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<FabricanteBean> listaFabricante = fad.allFabricante();
        request.setAttribute("listaFabricante", listaFabricante);
        rd = request.getRequestDispatcher("fabricantes.jsp");
        rd.forward(request, response);
    }
    
    protected void mostrarEditar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        List<FabricanteBean> listaId = fad.findById(id);
        request.setAttribute("listaId", listaId);
        rd = request.getRequestDispatcher("editarFabricante.jsp");
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
