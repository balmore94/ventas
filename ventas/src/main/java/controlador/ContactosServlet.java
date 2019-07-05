package controlador;

import conexion.Conexion;
import dao.ContactosDao;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ContactosBean;
import modelo.EmpresaBean;
import modelo.PaisBean;
import modelo.TipoContactoBean;

@WebServlet(name = "ContactosServlet", urlPatterns = {"/contactos"})
public class ContactosServlet extends HttpServlet {
    Conexion conn;
    ContactosDao ctd = new ContactosDao(conn);
    RequestDispatcher rd;
    String msg;
    boolean respuesta;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        String action = request.getParameter("action");
        
        switch(action){
            case "insertar":insertar(request, response);
                break;
            case "cliente":clientes(request, response);
                break;
            
        }
    }
    
    protected void insertar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        //int idContacto = Integer.parseInt(request.getParameter("id_contacto"));
        int idTipo = Integer.parseInt(request.getParameter("id_tipo"));
        String nombreContacto = request.getParameter("nombre_contacto");
        String apellidoContacto = request.getParameter("apellido_contacto");
        String emailContacto = request.getParameter("email_contacto");
        String telefonoContacto = request.getParameter("telefono_contacto");
        java.util.Date parsed = formato.parse(request.getParameter("fecha_ingreso"));
        java.sql.Date sql = new java.sql.Date(parsed.getTime());
        int pais = Integer.parseInt(request.getParameter("id_pais"));
        String nomEmpresa = request.getParameter("nombre_empresa");
        String nit = request.getParameter("nit_empresa");
        String pagWeb = request.getParameter("pagina_web");
        String telEmp = request.getParameter("telefono_empresa");
        String calle = request.getParameter("calle");
        String ciudad = request.getParameter("ciudad");
        String regpro = request.getParameter("region");
        String cp = request.getParameter("codigo");
        
        ContactosBean ct = new ContactosBean(0);
        TipoContactoBean tp = ct.getId_tipo();
        EmpresaBean emp = new EmpresaBean(0);
        PaisBean pa = emp.getId_pais();
        
        emp.setId_pais(pa);
        emp.setNombre_empresa(nomEmpresa);
        emp.setNit_empresa(nit);
        emp.setPagina_web(pagWeb);
        emp.setTelefono_empresa(telEmp);
        emp.setCalle(calle);
        emp.setCiudad(ciudad);
        emp.setRegion_provincia(regpro);
        emp.setCodigo_postal(cp);
        
        
        
        ct.setId_tipo(tp);
        ct.setNombre(nombreContacto);
        ct.setApellido(apellidoContacto);
        ct.setEmail(emailContacto);
        ct.setTelefono(telefonoContacto);
        ct.setFecha_ingreso(sql);
        ct.setId_empresa(emp);
        
        respuesta = ctd.insertar(ct);
        if (respuesta) {
            msg = "Registro guardado";
        }else{
            msg = "Error al guardar";
        }
        request.setAttribute("msg", msg);
        rd = request.getRequestDispatcher("registro.jsp");
        rd.forward(request, response);
        
    }
    protected void clientes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<ContactosBean> lista = ctd.allClientes();
        request.setAttribute("lista", lista);
        rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ContactosServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ContactosServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
