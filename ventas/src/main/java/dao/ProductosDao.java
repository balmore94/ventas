package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;
import modelo.FabricanteBean;
import modelo.ProductosBean;

/**
 *
 * @author Balmore
 */
public class ProductosDao {
    Conexion conn = new Conexion();

    public ProductosDao(Conexion conn) {
        this.conn = conn;
    }
    /*Metodo que retorna todos los productos*/
    public List<ProductosBean>allProductos(){
        String sql = "SELECT productos.id_producto,  productos.codigo, productos.imagen, productos.modelo, productos.nombre, productos.id_fabricante, fabricante.nombre_fabricante, productos.estado, productos.stock, productos.precio_unitario FROM productos INNER JOIN fabricante ON productos.id_fabricante = fabricante.id_fabricante";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            List<ProductosBean> lista = new LinkedList<>();
            ProductosBean pt;
            while (rs.next()) {
                FabricanteBean fa;
                pt = new ProductosBean(rs.getInt("id_producto"));
                fa = new FabricanteBean(rs.getInt("id_fabricante"));
                fa.setNombre_fabricante(rs.getString("nombre_fabricante"));
                
                pt.setCodigo(rs.getString("codigo"));
                pt.setImagen(rs.getString("imagen"));
                pt.setModelo(rs.getString("modelo"));
                pt.setNombre(rs.getString("nombre"));
                pt.setId_fabricante(fa);
                pt.setEstado(rs.getString("estado"));
                pt.setStock(rs.getInt("stock"));
                pt.setPrecio_unitario(rs.getDouble("precio_unitario"));
                
                //System.out.println(pt.getNombre());
                lista.add(pt);
                
            }
            return lista;
        } catch (Exception e) {
            return null;
        }
    }
    
    /*Metodo para insertar un nuevo producto a la base de datos*/
    public boolean insertarProducto(ProductosBean ptb){
        String sql = "insert into productos values (?,?,?,?,?,?,?,?,?,?,?,?,?);";
        FabricanteBean fab = ptb.getId_fabricante();
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, ptb.getId_producto());
            ps.setInt(2, fab.getId_fabricante());
            ps.setString(3, ptb.getCodigo());
            ps.setString(4, ptb.getImagen());
            ps.setString(5, ptb.getModelo());
            ps.setString(6, ptb.getNombre());
            ps.setString(7, ptb.getEstado());
            ps.setInt(8, ptb.getStock());
            ps.setDouble(9, ptb.getPrecio_unitario());
            ps.setDouble(10, ptb.getPrecio_venta());
            ps.setDouble(11, ptb.getGanancia());
            ps.setString(10, ptb.getPresentacion());         
            ps.setString(12, ptb.getCodigo_barra());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            return false; 
        }
    }
}
