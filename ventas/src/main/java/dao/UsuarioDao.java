package dao;

import conexion.Conexion;


public class UsuarioDao {
    
    Conexion conn = new Conexion ();

    public UsuarioDao(Conexion conn) {
        this.conn = conn;
    }   
    
    
    
}
