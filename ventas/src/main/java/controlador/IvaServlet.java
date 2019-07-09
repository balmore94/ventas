package controlador;

import conexion.Conexion;
import dao.IvaDao;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.IvaBean;


public class IvaServlet extends HttpServlet {
    
    Conexion conn = new Conexion ();
    IvaDao ivd = new IvaDao (conn); 
    RequestDispatcher rd; 
    String msg; 

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String action = request.getParameter("action");
         
         switch (action){
             case "insertar":insertar(request, response);
                break; 
             case "actualizar":actualizar(request, response); 
                break;     
             case "consultarAll":consultarAll(request, response); 
                break; 
             case "eliminar":eliminar(request, response);    
                break; 
             default:
                throw new AssertionError();
         }
        
    }

 
    protected void insertar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre"); 
        Double valor = Double.parseDouble(request.getParameter("valor")); 
        String estado = request.getParameter("estado"); 
        
        IvaBean ivb = new IvaBean(0);
        ivb.setNombre(nombre);
        ivb.setValor(valor);
        ivb.setEstado(estado);
        boolean respuesta = ivd.insertar(ivb);
        
    }
    
    protected void actualizar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int id = Integer.parseInt(request.getParameter("id_iva"));
        String nombre = request.getParameter("nombre");
        Double valor = Double.parseDouble(request.getParameter("valor"));
        String estado = request.getParameter("estado");
        
        IvaBean ivb = new IvaBean(id);
        ivb.setNombre(nombre);
        ivb.setValor(valor);
        ivb.setEstado(estado);
        
    } 
 
    protected void consultarAll(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<IvaBean> lista = ivd.consultarAll();
        request.setAttribute("lista", lista);
        rd = request.getRequestDispatcher("/Iva.jsp");
        rd.forward(request, response);
    }
    
     protected void eliminar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_iva = Integer.parseInt(request.getParameter("id_iva"));
        boolean respuesta = ivd.eliminar(id_iva);
        List<IvaBean> lista = ivd.consultarAll();
        if (respuesta) {
            msg = "Registro fue eliminado con exito";
        } else {
            msg = "Registro no fue eliminado";
        }
        request.setAttribute("msg", msg);
        request.setAttribute("lista", lista);
        rd = request.getRequestDispatcher("/Iva.jsp");
        rd.forward(request, response);
    }

       protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
}
