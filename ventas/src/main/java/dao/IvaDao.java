package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;
import modelo.IvaBean;


public class IvaDao {
    
    Conexion conn = new Conexion ();

    public IvaDao(Conexion conn) {
        this.conn = conn;
    }
    
    public boolean insertar(IvaBean ivb){
        String sql = "INSERT INTO iva VALUES(?,?,?,?);";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, ivb.getId_iva());
            ps.setInt(2, ivb.getNombre());
            ps.setDouble(3, ivb.getValor());
            ps.setString(4, ivb.getEstado());
            ps.execute();
        
        return true;
        } 
        catch (Exception e) {
        return false;    
        }
        }

    public boolean actualizar(IvaBean ivd){
        String sql = "UPDATE iva SET id_iva = ?, nombre = ?, valor = ?, estado = ?, WHERE id = ?";
    
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            
            ps.setString(1, ivd.getEstado());
            ps.setInt(2, ivd.getNombre());
            ps.setDouble(3, ivd.getValor());
            ps.setInt(4, ivd.getId_iva());
            
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    
        public List<IvaBean> consultarAll(){
        String sql = "SELECT * FROM iva";
    
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                List<IvaBean> lista = new LinkedList<>();
                IvaBean ivbd;
                while(rs.next()){
                    ivbd = new IvaBean(rs.getInt("id"));
                    ivbd.setId_iva(rs.getInt("id_iva"));
                    ivbd.setNombre(rs.getInt("nombre"));
                    ivbd.setValor(rs.getDouble("valor"));
                    ivbd.setEstado(rs.getString("estado"));
                    
                    lista.add(ivbd);
                }
            return lista;
        } catch (Exception e) {
            return null;
        }
    }

         public boolean eliminar(int id){
        String sql = "DELETE FROM iva WHERE id_iva = ?";
    
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
