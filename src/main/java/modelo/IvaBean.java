package modelo;

public class IvaBean {
    
private int id_iva;
private int nombre;
private double valor; 
private String estado;

    public IvaBean(int id_iva) {
        this.id_iva = id_iva;
    }

    public int getId_iva() {
        return id_iva;
    }

    public void setId_iva(int id_iva) {
        this.id_iva = id_iva;
    }

    public int getNombre() {
        return nombre;
    }

    public void setNombre(int nombre) {
        this.nombre = nombre;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }



}
