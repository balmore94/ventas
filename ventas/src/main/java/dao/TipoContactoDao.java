package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;
import modelo.TipoContactoBean;

/**
 *
 * @author Balmore
 */
public class TipoContactoDao {
    Conexion conn = new Conexion();

    public TipoContactoDao(Conexion conn) {
        this.conn = conn;
    }
    
    public List<TipoContactoBean> findAllTipo(){
        String sql = "SELECT * FROM ventas.tipo_contacto;";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            List<TipoContactoBean> listaTipo = new LinkedList<>();
            TipoContactoBean tpb;
            while(rs.next()){
                tpb  = new TipoContactoBean(rs.getInt("id_tipo"));
                tpb.setTipo(rs.getString("tipo"));
                listaTipo.add(tpb);
            }
            return listaTipo;
        } catch (Exception e) {
            return null;
        }
    }
    
}
