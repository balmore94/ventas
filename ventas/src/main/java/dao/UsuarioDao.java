package dao;


import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;
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
            ps.setString(5, usb.getTipo_usu());
            ps.setString(6, usb.getPassword());
            ps.setString(7, usb.getGrupo());
            ps.setDate(8, usb.getFecha_ingreso());
            ps.setString(9, usb.getEstado());
            ps.execute();
            
        return true;
        } 
        catch (Exception e) {
        return false;    
        }
        }
    
    public boolean actualizar(UsuarioBean usub){
        String sql = "UPDATE ventas SET id_usuario = ?, nombre = ?, usuario = ?, email = ?, tipo_usu = ?, password = ?, grupo = ?, fecha_ingreso = ?, estado = ?, WHERE id = ?";
    
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            
            ps.setString(1, usub.getEstado());
            ps.setString(2, usub.getNombre());
            ps.setString(3, usub.getUsuario());
            ps.setString(4, usub.getEmail());
            ps.setString(5, usub.getTipo_usu());
            ps.setString(6, usub.getPassword());
            ps.setString(7, usub.getGrupo());
            ps.setDate(8, usub.getFecha_ingreso());
            ps.setInt(9, usub.getId_usuario());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
        
    public List<UsuarioBean> consultarAll(){
        String sql = "SELECT * FROM ventas";
    
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                List<UsuarioBean> lista = new LinkedList<>();
                UsuarioBean usub;
                while(rs.next()){
                    usub = new UsuarioBean(rs.getInt("id"));
                    usub.setId_usuario(rs.getInt("id_usuario"));
                    usub.setNombre(rs.getString("nombre"));
                    usub.setUsuario(rs.getString("usuario"));
                    usub.setEmail(rs.getString("email"));
                    usub.setTipo_usu(rs.getString("tipo_usu"));
                    usub.setPassword(rs.getString("password"));
                    usub.setGrupo(rs.getString("grupo"));
                    usub.setFecha_ingreso(rs.getDate("fecha_ingreso"));
                    usub.setEstado(rs.getString("estado"));
                    lista.add(usub);
                }
            return lista;
        } catch (Exception e) {
            return null;
        }
    }

        public List<UsuarioBean> consultarByID(int id){
        String sql = "SELECT * FROM ventas WHERE id_usuario = ?";
    
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();
                List<UsuarioBean> lista = new LinkedList<>();
                UsuarioBean usub;
                while(rs.next()){
                    usub = new UsuarioBean(rs.getInt("id_usuario"));
                    usub.setNombre(rs.getString("nombre"));
                    usub.setUsuario(rs.getString("usuario"));
                    usub.setEmail(rs.getString("email"));
                    usub.setTipo_usu(rs.getString("tipo_usu"));
                    usub.setPassword(rs.getString("password"));
                    usub.setGrupo(rs.getString("grupo"));
                    usub.setFecha_ingreso(rs.getDate("fecha_ingreso"));
                    usub.setEstado(rs.getString("estado"));
                    lista.add(usub);
                }
            return lista;
        } catch (Exception e) {
            return null;
        }
    }
    
         public boolean eliminar(int id){
        String sql = "DELETE FROM ventas WHERE id_usuario = ?";
    
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
    
    

    
    
    

