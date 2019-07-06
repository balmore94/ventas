package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;
import modelo.ContactosBean;
import modelo.EmpresaBean;
import modelo.PaisBean;
import modelo.TipoContactoBean;


public class ContactosDao {
    Conexion conn;

    public ContactosDao(Conexion conn) {
        this.conn = conn;
    }
    
    public int insertar(ContactosBean ctb){
        String sql = "{call ventas.sp_nuevoContacto(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
        TipoContactoBean tpcb = ctb.getId_tipo_contacto();
        EmpresaBean emb = ctb.getId_empresa();
        PaisBean pab = emb.getId_pais();
        try {
            CallableStatement ps = conn.conectar().prepareCall(sql);
            ps.setInt(1, ctb.getId_contacto());
            ps.setInt(2, tpcb.getId_tipo());
            ps.setString(3, ctb.getNombre());
            ps.setString(4, ctb.getApellido());
            ps.setString(5, ctb.getEmail());
            ps.setString(6, ctb.getTelefono());

            
            ps.setInt(7, pab.getId_pais());
            ps.setString(8, emb.getNombre_empresa());
            ps.setString(9, emb.getNit_empresa());
            ps.setString(10, emb.getPagina_web());
            ps.setString(11, emb.getTelefono_empresa());
            ps.setString(12, emb.getCalle());
            ps.setString(13, emb.getCiudad());
            ps.setString(14, emb.getRegion_provincia());
            ps.setString(15, emb.getCodigo_postal());
            boolean execute = ps.execute();
            if (execute) {
                return 1;
            }
        } catch (Exception e) {
            return 0;
        }
        return 0;
    }
    
    public List<ContactosBean> allClientes(){
        String sql = "SELECT contactos.id_contacto, contactos.nombre, contactos.apellido, contactos.email, contactos.telefono,empresa.id_empresa, empresa.nombre_empresa, empresa.pagina_web, empresa.telefono_empresa, empresa.nit_empresa FROM contactos INNER JOIN empresa ON contactos.id_empresa = empresa.id_empresa WHERE contactos.id_tipo = 2";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            List<ContactosBean> lista = new LinkedList<>();
            ContactosBean ctb;
            while(rs.next()){
                EmpresaBean emb;
                ctb = new ContactosBean(rs.getInt("id_contacto"));
                emb = new EmpresaBean(rs.getInt("id_empresa"));
                
                emb.setNombre_empresa(rs.getString("nombre_empresa"));
                emb.setPagina_web(rs.getString("pagina_web"));
                emb.setTelefono_empresa(rs.getString("telefono_empresa"));
                emb.setNit_empresa(rs.getString("nit_empresa"));
                
                ctb.setNombre(rs.getString("nombre"));
                ctb.setApellido(rs.getString("apellido"));
                ctb.setEmail(rs.getString("email"));
                ctb.setTelefono(rs.getString("telefono"));
                ctb.setId_empresa(emb);
                lista.add(ctb);
                
            }
            return lista;
        } catch (Exception e) {
            return null;
        }
    }
}
