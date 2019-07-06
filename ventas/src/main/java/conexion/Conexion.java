package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class Conexion {

    static String bd = "ventas";
    static String user = "root";
    static String pass = "root";
    static String url = "jdbc:mysql://localhost/" + bd + "?useSSL=false";

    Connection conn = null;

    public Conexion() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
            if (conn != null) {
                System.out.println("Conexion exitosa");
            }
        } catch (Exception e) {
            System.out.println("Conexion fallida");
        }

    }

    public Connection conectar() {
        return conn;
    }

    public void desconecta() throws Exception {
        conn.close();
    }

}
