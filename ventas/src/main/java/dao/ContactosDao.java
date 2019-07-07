package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
    int idEmpresa;
    public boolean insertar(ContactosBean ct) {
        String sql = "INSERT INTO empresa VALUE(?,?,?,?,?,?,?,?,?,?)";
        EmpresaBean emp = ct.getId_empresa();
        PaisBean pa = emp.getId_pais();
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, emp.getId_empresa());
            ps.setInt(2, pa.getId_pais());
            ps.setString(3, emp.getNombre_empresa());
            ps.setString(4, emp.getNit_empresa());
            ps.setString(5, emp.getPagina_web());
            ps.setString(6, emp.getTelefono_empresa());
            ps.setString(7, emp.getCalle());
            ps.setString(8, emp.getCiudad());
            ps.setString(9, emp.getRegion_provincia());
            ps.setString(10, emp.getCodigo_postal());
            int status = ps.executeUpdate();

            try (ResultSet rs = ps.getGeneratedKeys()) {
                if (!rs.next()) {
                    throw new RuntimeException("no devolvió el ID");
                }

                idEmpresa = rs.getInt(1);
                System.out.println(idEmpresa);
                insertarContacto(ct);
            }
            
            
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    public boolean insertarContacto(ContactosBean ct) {
        String sql = "insert into contactos values (?,?,?,?,?,?,?,now())";
        TipoContactoBean tipo = ct.getId_tipo_contacto();
        System.out.println(tipo.getId_tipo());
        System.out.println(idEmpresa);
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ps.setInt(1, ct.getId_contacto());
            ps.setInt(2, tipo.getId_tipo());
            ps.setInt(3, idEmpresa);
            ps.setString(4, ct.getNombre());
            ps.setString(5, ct.getApellido());
            ps.setString(6, ct.getEmail());
            ps.setString(7, ct.getTelefono());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    public List<ContactosBean> allClientes() {
        String sql = "SELECT contactos.id_contacto, contactos.nombre, contactos.apellido, contactos.email, contactos.telefono,empresa.id_empresa, empresa.nombre_empresa, empresa.pagina_web, empresa.telefono_empresa, empresa.nit_empresa FROM contactos INNER JOIN empresa ON contactos.id_empresa = empresa.id_empresa WHERE contactos.id_tipo = 2";
        try {
            PreparedStatement ps = conn.conectar().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            List<ContactosBean> lista = new LinkedList<>();
            ContactosBean ctb;
            while (rs.next()) {
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

    public boolean eliminar(int id){
        String sql = "DELETE FROM contactos WHERE id_contacto = ?";
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
