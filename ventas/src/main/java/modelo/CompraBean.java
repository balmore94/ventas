package modelo;

import java.util.Date;

public class CompraBean {
    private int id_compra;
    private IvaBean id_iva;
    private ContactosBean id_proveedor;
    private UsuarioBean id_usuario;
    private int num_compra;
    private Date fecha_compra;
    private double total_neto;
    private double total_iva;
    private double porcentaje_iva;

    public CompraBean(int id_compra) {
        this.id_compra = id_compra;
    }

    public int getId_compra() {
        return id_compra;
    }

    public void setId_compra(int id_compra) {
        this.id_compra = id_compra;
    }

    public IvaBean getId_iva() {
        return id_iva;
    }

    public void setId_iva(IvaBean id_iva) {
        this.id_iva = id_iva;
    }

    public ContactosBean getId_proveedor() {
        return id_proveedor;
    }

    public void setId_proveedor(ContactosBean id_proveedor) {
        this.id_proveedor = id_proveedor;
    }

    public UsuarioBean getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(UsuarioBean id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getNum_compra() {
        return num_compra;
    }

    public void setNum_compra(int num_compra) {
        this.num_compra = num_compra;
    }

    public Date getFecha_compra() {
        return fecha_compra;
    }

    public void setFecha_compra(Date fecha_compra) {
        this.fecha_compra = fecha_compra;
    }

    public double getTotal_neto() {
        return total_neto;
    }

    public void setTotal_neto(double total_neto) {
        this.total_neto = total_neto;
    }

    public double getTotal_iva() {
        return total_iva;
    }

    public void setTotal_iva(double total_iva) {
        this.total_iva = total_iva;
    }

    public double getPorcentaje_iva() {
        return porcentaje_iva;
    }

    public void setPorcentaje_iva(double porcentaje_iva) {
        this.porcentaje_iva = porcentaje_iva;
    }
    
    
}
