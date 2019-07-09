package controlador;

import conexion.Conexion;
import dao.FabricanteDao;
import dao.ProductosDao;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.FabricanteBean;
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
            case "registroProducto":
                showRegistro(request, response);
                break;
            case "nuevoProducto":
                nuevoProducto(request, response);
                break;
            case "showEditar":
                showEditar(request, response);
                break;
        }
    }

    protected void allProductos(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<ProductosBean> lista = ptd.allProductos();

        request.setAttribute("lista", lista);
        rd = request.getRequestDispatcher("productos.jsp");
        rd.forward(request, response);
    }

    protected void showRegistro(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        FabricanteDao fad = new FabricanteDao(conn);
        List<FabricanteBean> listaFabricante = fad.allFabricante();
        request.setAttribute("listaFabricante", listaFabricante);
        rd = request.getRequestDispatcher("registroProducto.jsp");
        rd.forward(request, response);
    }

    protected void nuevoProducto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //int id_producto = Integer.parseInt(request.getParameter("codigo_producto"));
        int id_fabricante = Integer.parseInt(request.getParameter("fabricante"));
        String codigo_producto = request.getParameter("codigo_producto");
        String modelo = request.getParameter("modelo");
        String nombre_producto = request.getParameter("nombre_producto");
        String presentacion = request.getParameter("presentacion");
        //String desc = request.getParameter("descripcion");
        String estado = request.getParameter("estado");
        double precio_unitario = Double.valueOf(request.getParameter("precio"));
        
        double ganancia = Double.valueOf(request.getParameter("ganancia"));
        double precio_venta = Double.valueOf(request.getParameter("precio_venta"));
        int stock = Integer.parseInt(request.getParameter("stock"));
        String imagen = request.getParameter("imagen");

        ProductosBean ptb = new ProductosBean(0);

        FabricanteBean fab = new FabricanteBean(id_fabricante);
        
        ptb.setId_fabricante(fab);
        ptb.setCodigo(codigo_producto);
        ptb.setImagen(imagen);
        ptb.setModelo(modelo);
        ptb.setNombre(nombre_producto);
        ptb.setEstado(estado);
        ptb.setStock(stock);
        ptb.setPrecio_unitario(precio_unitario);
        ptb.setPrecio_venta(precio_venta);
        ptb.setGanancia(ganancia);
        ptb.setPresentacion(presentacion);

        respuesta = ptd.insertarProducto(ptb);
        if (respuesta) {
            msg = "<div class=\"alert alert-success\" role=\"alert\">\n"
                    + "  Registro guardado!\n"
                    + "</div>";
        } else {
            msg = "<div class=\"alert alert-danger\" role=\"alert\">\n"
                    + "  Algo salio mal, el registro no se pudo guardar...\n"
                    + "</div>";
        }
        
        List<ProductosBean> lista = ptd.allProductos();
        request.setAttribute("lista", lista);
        request.setAttribute("msg", msg);
        rd = request.getRequestDispatcher("productos.jsp");
        rd.forward(request, response);
    }
    
    protected void showEditar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        List<ProductosBean>listaId = ptd.findById(id);
        FabricanteDao fad = new FabricanteDao(conn);
        List<FabricanteBean> listaFabricante = fad.allFabricante();
        request.setAttribute("listaId", listaId);
        request.setAttribute("listaFabricante", listaFabricante);
        rd = request.getRequestDispatcher("editarProducto.jsp");
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
