package edu.mx.uttt.bda.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    static Connection con = null;

    public static Connection conectar() {
        String url = "jdbc:sqlserver://localhost:1433;databaseName=Northwind;encrypt=true;trustServerCertificate=true";
        String user = "sa";
        String password = "@180205";
        try {
            con = DriverManager.getConnection(url, user, password);
            System.out.println("Conexion exitosa a la base de datos!");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("Error al conectar a la base de datos.");
        }
        return con;
    }

    public static void cerrarSesion() {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                System.out.println("No se pudo cerrar la conexion");
            }
        } else {
            System.out.println("La conexion esta cerrada");
        }
    }
}
