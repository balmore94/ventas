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
            PreparedStatement ps = conn.prepareCall("{call sp_nuevoContacto(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
            ps.setInt(1, ctb.getId_contacto());
            ps.setInt(2, tpcb.getId_tipo());
            ps.setString(3, ctb.getNombre());
            ps.setString(4, ctb.getApellido());
            ps.setString(5, ctb.getEmail());
            ps.setString(6, ctb.getTelefono());
            ps.setDate(7, ctb.getFecha_ingreso());
            
            ps.setInt(8, pab.getId_pais());
            ps.setString(9, emb.getNombre());
            ps.setString(10, emb.getNit_empresa());
            ps.setString(11, emb.getPagina_web());
            ps.setString(12, emb.getTelefono());
            ps.setString(13, emb.getCalle());
            ps.setString(14, emb.getCiudad());
            ps.setString(15, emb.getRegion_provincia());
            ps.setString(16, emb.getCodigo_postal());
            ps.execute();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
