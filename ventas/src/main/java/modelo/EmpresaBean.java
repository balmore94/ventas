package modelo;

public class EmpresaBean {
    private int id_empresa;
    private PaisBean id_pais;
    private String nombre_empresa;
    private String nit_empresa;
    private String pagina_web;
    private String telefono_empresa;
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

    public String getNombre_empresa() {
        return nombre_empresa;
    }

    public void setNombre_empresa(String nombre_empresa) {
        this.nombre_empresa = nombre_empresa;
    }

    public String getTelefono_empresa() {
        return telefono_empresa;
    }

    public void setTelefono_empresa(String telefono_empresa) {
        this.telefono_empresa = telefono_empresa;
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
