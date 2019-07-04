package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import modelo.UsuarioBean;

public class UsuarioDao {
    
    Conexion conn = new Conexion ();

    public UsuarioDao(Conexion conn) {
        this.conn = conn;
    }   
    
    public boolean insertar(UsuarioBean usb){
        String sql = "INSERT INTO usuario VALUES(?,?,?,?,?,?,?,?,?);";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, usb.getId_usuario());
            ps.setString(2, usb.getNombre());
            ps.setString(3, usb.getUsuario());
            ps.setString(4, usb.getEmail());
            ps.setString(4, usb.getPassword());
        } catch (Exception e) {
        }
    }
    
}
