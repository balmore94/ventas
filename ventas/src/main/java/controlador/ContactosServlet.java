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
    int res;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        String action = request.getParameter("action");

        switch (action) {
            case "allClientes":
                allClientes(request, response);
                break;
            case "insertar":
                insertar(request, response);
                break;
            case "editar":
                editar(request, response);
                break;
            case "eliminar":
                eliminar(request, response);
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

        int pais = Integer.parseInt(request.getParameter("pais"));
        String nomEmpresa = request.getParameter("nombre_empresa");
        String nit = request.getParameter("nit_empresa");
        String pagWeb = request.getParameter("pag_web");
        String telEmp = request.getParameter("telefono_empresa");
        String calle = request.getParameter("calle");
        String ciudad = request.getParameter("ciudad");
        String regpro = request.getParameter("region");
        String cp = request.getParameter("cp");

        ContactosBean ct = new ContactosBean(0);
        TipoContactoBean tipo = new TipoContactoBean(idTipo);
        EmpresaBean emp = new EmpresaBean(0);
        PaisBean pa = new PaisBean(pais);

        emp.setId_pais(pa);
        emp.setNombre_empresa(nomEmpresa);
        emp.setNit_empresa(nit);
        emp.setPagina_web(pagWeb);
        emp.setTelefono_empresa(telEmp);
        emp.setCalle(calle);
        emp.setCiudad(ciudad);
        emp.setRegion_provincia(regpro);
        emp.setCodigo_postal(cp);

        ct.setId_tipo_contacto(tipo);
        ct.setNombre(nombreContacto);
        ct.setId_empresa(emp);
        ct.setApellido(apellidoContacto);
        ct.setEmail(emailContacto);
        ct.setTelefono(telefonoContacto);

        respuesta = ctd.insertar(ct);
        List<ContactosBean> lista = ctd.allClientes();

        System.out.println(pa.getId_pais());
        if (respuesta) {
            msg = "<div class=\"alert alert-success\" role=\"alert\">\n"
                    + "  <strong>Bien hecho!</strong> Registro guardado correctamente\n"
                    + "</div>";
        } else {
            msg = "<div class=\"alert alert-danger\" role=\"alert\">\n"
                    + "  <strong>Error!</strong> Algo salió mal, intente de nuevo.\n"
                    + "</div>";
        }
        request.setAttribute("msg", msg);
        request.setAttribute("lista", lista);
        rd = request.getRequestDispatcher("clientes.jsp");
        rd.forward(request, response);

    }

    protected void allClientes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TipoContactoDao tp = new TipoContactoDao(conn);
        PaisDao pa = new PaisDao(conn);
        List<TipoContactoBean> listaTipo = tp.findAllTipo();
        List<PaisBean> listaPais = pa.consultarAll();
        request.setAttribute("listaTipo", listaTipo);
        request.setAttribute("listaPais", listaPais);
        List<ContactosBean> lista = ctd.allClientes();
        request.setAttribute("lista", lista);
        rd = request.getRequestDispatcher("clientes.jsp");
        rd.forward(request, response);
    }

    protected void editar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    protected void eliminar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ctd.eliminar(id);
        if (respuesta) {
            msg = "<div class=\"alert alert-success\" role=\"alert\">\n"
                    + "  <strong>Exito!</strong> El registro fue eliminado<a href=\"#\" class=\"alert-link\">this important alert message</a>.\n"
                    + "</div>";
        } else {
            msg = "<div class=\"alert alert-danger\" role=\"alert\">\n"
                    + "  <strong>Oh snap!</strong> <a href=\"#\" class=\"alert-link\">Change a few things up</a> and try submitting again.\n"
                    + "</div>";
        }
        TipoContactoDao tp = new TipoContactoDao(conn);
        PaisDao pa = new PaisDao(conn);
        List<TipoContactoBean> listaTipo = tp.findAllTipo();
        List<PaisBean> listaPais = pa.consultarAll();
        request.setAttribute("listaTipo", listaTipo);
        request.setAttribute("listaPais", listaPais);
        List<ContactosBean> lista = ctd.allClientes();
        request.setAttribute("lista", lista);
        rd = request.getRequestDispatcher("clientes.jsp");
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
