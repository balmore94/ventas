/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import conexion.Conexion;
import dao.ContactosDao;
import dao.PaisDao;
import dao.TipoContactoDao;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.ContactosBean;
import modelo.EmpresaBean;
import modelo.PaisBean;
import modelo.TipoContactoBean;

/**
 *
 * @author Balmore
 */
public class ContactosServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Conexion conn = new Conexion();
    ContactosDao ctd = new ContactosDao(conn);
    RequestDispatcher rd;
    boolean respuesta;
    String msg;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        String action = request.getParameter("action");
        
        switch(action){
            case "allClientes":allClientes(request, response);
                break;
            case "registroCliente":registroCliente(request, response);
                break;
            case "insertar":insertar(request, response);
                break;
        }
    }
    protected void insertar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        
        //int idContacto = Integer.parseInt(request.getParameter("id_contacto"));
        int idTipo = Integer.parseInt(request.getParameter("id_tipo"));
        String nombreContacto = request.getParameter("nombre_cliente");
        String apellidoContacto = request.getParameter("apellido_cliente");
        String emailContacto = request.getParameter("correo");
        String telefonoContacto = request.getParameter("telefono_cliente");
       
        
        int pais = Integer.parseInt(request.getParameter("id_pais"));
        String nomEmpresa = request.getParameter("nombre_empresa");
        String nit = request.getParameter("nit_empresa");
        String pagWeb = request.getParameter("pag_web");
        String telEmp = request.getParameter("telefono_empresa");
        String calle = request.getParameter("calle");
        String ciudad = request.getParameter("ciudad");
        String regpro = request.getParameter("region");
        String cp = request.getParameter("cp");
        
        
        
        EmpresaBean empresa = new EmpresaBean(0);
        PaisBean pa = empresa.getId_pais();
        
        empresa.setId_pais(pa);
        empresa.setNombre_empresa(nomEmpresa);
        empresa.setNit_empresa(nit);
        empresa.setPagina_web(pagWeb);
        empresa.setTelefono_empresa(telEmp);
        empresa.setCalle(calle);
        empresa.setCiudad(ciudad);
        empresa.setRegion_provincia(regpro);
        empresa.setCodigo_postal(cp);
        
        ContactosBean ctb = new ContactosBean(0);
        TipoContactoBean t = ctb.getId_tipo_contacto();
        
        ctb.setId_tipo_contacto(t);
        ctb.setId_empresa(empresa);
        ctb.setNombre(nombreContacto);
        ctb.setApellido(apellidoContacto);
        ctb.setEmail(emailContacto);
        ctb.setTelefono(telefonoContacto);
        
        System.out.println(idTipo+ nombreContacto+apellidoContacto+emailContacto+telefonoContacto+pais+nomEmpresa+nit+pagWeb+telEmp+calle+ciudad+regpro+cp);
        int resultado  = ctd.insertar(ctb);
        if (resultado == 1) {
            msg = "Registro guardado" + resultado;
        }else{
            msg = "Error al guardar";
        }
        request.setAttribute("msg", msg);
        rd = request.getRequestDispatcher("registroCliente.jsp");
        rd.forward(request, response);
        
    }
    protected void allClientes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<ContactosBean> lista = ctd.allClientes();
        request.setAttribute("lista", lista);
        rd = request.getRequestDispatcher("clientes.jsp");
        rd.forward(request, response);
    }
    
    protected void registroCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TipoContactoDao tp = new TipoContactoDao(conn);
        PaisDao pa = new PaisDao(conn);
        List<TipoContactoBean> listaTipo = tp.findAllTipo();
        List<PaisBean> listaPais = pa.consultarAll();
        request.setAttribute("listaTipo", listaTipo);
        request.setAttribute("listaPais", listaPais);
        rd = request.getRequestDispatcher("registroCliente.jsp");
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
