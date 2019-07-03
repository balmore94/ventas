package modelo;

public class DetalleFacturacionBean {

    private int id_detallefact;
    private ProductosBean id_producto;
    private FacturacionBean id_factura;
    private int cantidad;
    private double precio_unidad;

    public DetalleFacturacionBean(int id_detallefact) {
        this.id_detallefact = id_detallefact;
    }

    public int getId_detallefact() {
        return id_detallefact;
    }

    public void setId_detallefact(int id_detallefact) {
        this.id_detallefact = id_detallefact;
    }

    public ProductosBean getId_producto() {
        return id_producto;
    }

    public void setId_producto(ProductosBean id_producto) {
        this.id_producto = id_producto;
    }

    public FacturacionBean getId_factura() {
        return id_factura;
    }

    public void setId_factura(FacturacionBean id_factura) {
        this.id_factura = id_factura;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio_unidad() {
        return precio_unidad;
    }

    public void setPrecio_unidad(double precio_unidad) {
        this.precio_unidad = precio_unidad;
    }
    
    
    
}
