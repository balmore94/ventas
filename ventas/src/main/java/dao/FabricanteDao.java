package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;
import modelo.FabricanteBean;

/**
 *
 * @author Balmore
 */
public class FabricanteDao {
    Conexion conn = new Conexion();

    public FabricanteDao(Conexion conn) {
        this.conn = conn;
    }
    /*Metodo que retorna una lista que contiene los fabricantes registrados*/
    public List<FabricanteBean> allFabricante(){
        String sql = "SELECT id_fabricante, nombre_fabricante FROM fabricante";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            List<FabricanteBean> listaFabricante = new LinkedList<>();
            FabricanteBean fa;
            while(rs.next()){
                fa = new FabricanteBean(rs.getInt("id_fabricante"));
                fa.setNombre_fabricante(rs.getString("nombre_fabricante"));
                listaFabricante.add(fa);
            }
            return listaFabricante;
        } catch (Exception e) {
            return null;
        }
    }
}
