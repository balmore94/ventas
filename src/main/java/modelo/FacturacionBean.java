package modelo;

import java.util.Date;

public class FacturacionBean {
    private int id_facturacion;
    private ContactosBean id_cliente;
    private UsuarioBean id_vendedor;
    private IvaBean id_iva;
    private int num_factura;
    private Date fecha_venta;
    private double total_neto;
    private double total_iva;
    private double porcentaje_iva;

    public FacturacionBean(int id_facturacion) {
        this.id_facturacion = id_facturacion;
    }

    public int getId_facturacion() {
        return id_facturacion;
    }

    public void setId_facturacion(int id_facturacion) {
        this.id_facturacion = id_facturacion;
    }

    public ContactosBean getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(ContactosBean id_cliente) {
        this.id_cliente = id_cliente;
    }

    public UsuarioBean getId_vendedor() {
        return id_vendedor;
    }

    public void setId_vendedor(UsuarioBean id_vendedor) {
        this.id_vendedor = id_vendedor;
    }

    public IvaBean getId_iva() {
        return id_iva;
    }

    public void setId_iva(IvaBean id_iva) {
        this.id_iva = id_iva;
    }

    public int getNum_factura() {
        return num_factura;
    }

    public void setNum_factura(int num_factura) {
        this.num_factura = num_factura;
    }

    public Date getFecha_venta() {
        return fecha_venta;
    }

    public void setFecha_venta(Date fecha_venta) {
        this.fecha_venta = fecha_venta;
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
