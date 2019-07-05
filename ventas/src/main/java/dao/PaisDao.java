package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;
import modelo.PaisBean;
import modelo.UsuarioBean;

public class PaisDao {
 
    Conexion conn = new Conexion ();

    public PaisDao(Conexion conn) {
        this.conn = conn;
    }   
    
    public boolean insertar(PaisBean pab){
        String sql = "INSERT INTO pais VALUES(?,?);";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, pab.getId_pais());
            ps.setString(2, pab.getNombre());
            ps.execute();
            
        return true;
        } 
        catch (Exception e) {
        return false;    
        }
        }

    public boolean actualizar(PaisBean pad){
        String sql = "UPDATE pais SET id_pais = ?, nombre = ?, WHERE id = ?";
    
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            
            ps.setInt(1, pad.getId_pais());
            ps.setString(2, pad.getNombre());
            
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public List<PaisBean> consultarAll(){
        String sql = "SELECT * FROM pais";
    
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                List<PaisBean> lista = new LinkedList<>();
                PaisBean usub;
                while(rs.next()){
                    usub = new PaisBean(rs.getInt("id"));
                    usub.setId_pais(rs.getInt("id_pais"));
                    usub.setNombre(rs.getString("nombre"));
                    
                    lista.add(usub);
                }
            return lista;
        } catch (Exception e) {
            return null;
        }
    }

    public List<PaisBean> consultarByID(int id){
        String sql = "SELECT * FROM pais WHERE id_usuario = ?";
    
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();
                List<PaisBean> lista = new LinkedList<>();
                PaisBean pais;
                while(rs.next()){
                    pais = new PaisBean(rs.getInt("id"));
                    pais.setId_pais(rs.getInt("id_pais"));
                    pais.setNombre(rs.getString("nombre"));
                    
                    lista.add(pais);
                }
            return lista;
        } catch (Exception e) {
            return null;
        }
    }


             public boolean eliminar(int id){
        String sql = "DELETE FROM pais WHERE id_pais = ?";
    
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
    