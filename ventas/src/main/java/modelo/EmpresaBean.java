package modelo;

public class EmpresaBean {
    private int id_empresa;
    private PaisBean id_pais;
    private String nombre;
    private String nit_empresa;
    private String pagina_web;
    private String telefono;
    private String calle;
    private String ciudad;
    private String region_provincia;
    private String codigo_postal;

    public EmpresaBean(int id_empresa) {
        this.id_empresa = id_empresa;
    }

    public int getId_empresa() {
        return id_empresa;
    }

    public void setId_empresa(int id_empresa) {
        this.id_empresa = id_empresa;
    }

    public PaisBean getId_pais() {
        return id_pais;
    }

    public void setId_pais(PaisBean id_pais) {
        this.id_pais = id_pais;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNit_empresa() {
        return nit_empresa;
    }

    public void setNit_empresa(String nit_empresa) {
        this.nit_empresa = nit_empresa;
    }

    public String getPagina_web() {
        return pagina_web;
    }

    public void setPagina_web(String pagina_web) {
        this.pagina_web = pagina_web;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getRegion_provincia() {
        return region_provincia;
    }

    public void setRegion_provincia(String region_provincia) {
        this.region_provincia = region_provincia;
    }

    public String getCodigo_postal() {
        return codigo_postal;
    }

    public void setCodigo_postal(String codigo_postal) {
        this.codigo_postal = codigo_postal;
    }
    
    
}
