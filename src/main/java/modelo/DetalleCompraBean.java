package modelo;

public class DetalleCompraBean {
    private int iddetalle_compra;
    private ProductosBean id_producto;
    private IvaBean id_iva;
    private int cantidad;
    private double precio_unidad;

    public DetalleCompraBean(int iddetalle_compra) {
        this.iddetalle_compra = iddetalle_compra;
    }

    public int getIddetalle_compra() {
        return iddetalle_compra;
    }

    public void setIddetalle_compra(int iddetalle_compra) {
        this.iddetalle_compra = iddetalle_compra;
    }

    public ProductosBean getId_producto() {
        return id_producto;
    }

    public void setId_producto(ProductosBean id_producto) {
        this.id_producto = id_producto;
    }

    public IvaBean getId_iva() {
        return id_iva;
    }

    public void setId_iva(IvaBean id_iva) {
        this.id_iva = id_iva;
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
