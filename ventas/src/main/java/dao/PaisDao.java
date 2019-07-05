package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import modelo.PaisBean;

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
}
