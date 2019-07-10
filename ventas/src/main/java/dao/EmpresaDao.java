
package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;
import modelo.EmpresaBean;

/**
 *
 * @author Balmore
 */
public class EmpresaDao {
    Conexion conn = new Conexion();

    public EmpresaDao(Conexion conn) {
        this.conn = conn;
    }
    
    public List<EmpresaBean>allEmpresa(){
        String sql = "SELECT id_empresa, nombre_empresa FROM empresa";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            List<EmpresaBean> listaEmpresa = new LinkedList<>();
            EmpresaBean emb;
            while(rs.next()){
                emb = new EmpresaBean(rs.getInt("id_empresa"));
                emb.setNombre_empresa(rs.getString("nombre_empresa"));
                listaEmpresa.add(emb);
            }
            return listaEmpresa;
        } catch (Exception e) {
            return null;
        }
    }
}
