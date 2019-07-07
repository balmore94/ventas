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
    Conexion conn;

    public ProductosDao(Conexion conn) {
        this.conn = conn;
    }
    public List<ProductosBean>allProductos(){
        String sql = "select id_producto, nombre from productos";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            List<ProductosBean> lista = new LinkedList<>();
            ProductosBean pt;
            while (rs.next()) {
                pt = new ProductosBean(rs.getInt("id_producto"));
                
                pt.setNombre(rs.getString("nombre"));
                lista.add(pt);
                System.out.println(lista);
            }
            return lista;
        } catch (Exception e) {
            return null;
        }
    }
}
