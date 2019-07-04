package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import modelo.ContactosBean;
import modelo.EmpresaBean;
import modelo.PaisBean;
import modelo.TipoContactoBean;


public class ContactosDao {
    Conexion conn;

    public ContactosDao(Conexion conn) {
        this.conn = conn;
    }
    
    public boolean insertar(ContactosBean ctb){
        TipoContactoBean tpcb = ctb.getId_tipo();
        EmpresaBean emb = ctb.getId_empresa();
        PaisBean pab = emb.getId_pais();
        try {
            PreparedStatement ps = conn.prepareCall("{call sp_nuevoContacto(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
            ps.setInt(1, ctb.getId_contacto());
            ps.setInt(2, tpcb.getId_tipo());
            ps.setInt(3, emb.getId_empresa());
            ps.setString(4, ctb.getNombre());
            ps.setString(5, ctb.getApellido());
            ps.setString(6, ctb.getEmail());
            ps.setString(7, ctb.getTelefono());
            ps.setDate(8, ctb.getFecha_ingreso());
            
            ps.setInt(9, pab.getId_pais());
            ps.setString(10, emb.getNombre());
            ps.setString(11, emb.getNit_empresa());
            ps.setString(12, emb.getPagina_web());
            ps.setString(13, emb.getTelefono());
            ps.setString(14, emb.getCalle());
            ps.setString(15, emb.getCiudad());
            ps.setString(16, emb.getRegion_provincia());
            ps.setString(17, emb.getCodigo_postal());
            ps.executeQuery();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
