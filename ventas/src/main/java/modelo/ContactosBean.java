package modelo;

import java.sql.Date;

public class ContactosBean {
    private int id_contacto;
    private TipoContactoBean id_tipo_contacto;
    private EmpresaBean id_empresa;
    private String nombre;
    private String apellido;
    private String email;
    private String telefono;
    private Date fecha_ingreso;

    public ContactosBean(int id_contacto) {
        this.id_contacto = id_contacto;
    }

    public int getId_contacto() {
        return id_contacto;
    }

    public void setId_contacto(int id_contacto) {
        this.id_contacto = id_contacto;
    }

    public TipoContactoBean getId_tipo_contacto() {
        return id_tipo_contacto;
    }

    public void setId_tipo_contacto(TipoContactoBean id_tipo_contacto) {
        this.id_tipo_contacto = id_tipo_contacto;
    }

   

    public EmpresaBean getId_empresa() {
        return id_empresa;
    }

    public void setId_empresa(EmpresaBean id_empresa) {
        this.id_empresa = id_empresa;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public Date getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(Date fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }
    
    
}
