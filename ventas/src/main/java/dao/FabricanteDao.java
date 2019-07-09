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
        String sql = "SELECT * FROM fabricante";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            List<FabricanteBean> listaFabricante = new LinkedList<>();
            FabricanteBean fa;
            while(rs.next()){
                fa = new FabricanteBean(rs.getInt("id_fabricante"));
                fa.setNombre_fabricante(rs.getString("nombre_fabricante"));
                fa.setNumero_producto(rs.getInt("numero_producto"));
                fa.setEstado(rs.getString("estado"));
                fa.setFecha_ingreso(rs.getDate("fecha_ingreso"));
                listaFabricante.add(fa);
            }
            return listaFabricante;
        } catch (Exception e) {
            return null;
        }
    }
    
    public boolean insertar(FabricanteBean fad){
        String sql = "INSERT INTO fabricante (id_fabricante, nombre_fabricante) VALUES (?,?)";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, fad.getId_fabricante());
            ps.setString(2, fad.getNombre_fabricante());
            ps.executeQuery();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    
    public List<FabricanteBean> findById(int id){
        String sql = "SELECT id_fabricante, nombre_fabricante, estado FROM fabricante WHERE id_fabricante = ?";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            List<FabricanteBean> listaId = new LinkedList<>();
            FabricanteBean fab;
            while(rs.next()){
                fab= new FabricanteBean(rs.getInt("id_fabricante"));
                fab.setNombre_fabricante(rs.getString("nombre_fabricante"));
                fab.setEstado(rs.getString("estado"));
                listaId.add(fab);
            }
            return listaId;
        } catch (Exception e) {
            return null;
        }
    }
}
