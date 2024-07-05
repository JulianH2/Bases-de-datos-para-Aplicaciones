/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.mx.uttt.bda.model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import edu.mx.uttt.bda.entidad.cliente;
import edu.mx.uttt.bda.conexion.Conexion;

/**
 *
 * @author Usuario
 */
public class ModelCliente {

    static boolean sentinel = false;

    public static boolean agregar(cliente cli) {
        Connection con = Conexion.conectar();
        PreparedStatement pst = null;

        String query = """
                       INSERT INTO [dbo].[Customers]
                       ([CustomerID]
                       ,[CompanyName]
                       ,[ContactName]
                       ,[ContactTitle]
                       ,[Address]
                       ,[City]
                       ,[Region]
                       ,[PostalCode]
                       ,[Country]
                       ,[Phone]
                       ,[Fax])
                        VALUES(?,?,?,?,?,?,?,?,?,?,?)""";
        try {
            pst = con.prepareStatement(query);
            pst.setString(1, cli.getCustomerId());
            pst.setString(2, cli.getCompanyName());
            pst.setString(3, cli.getContacto());
            pst.setString(4, cli.getContacTitulo());
            pst.setString(5, cli.getAddress());
            pst.setString(6, cli.getCity());
            pst.setString(7, cli.getRegion());
            pst.setString(8, cli.getPostalCode());
            pst.setString(9, cli.getCountry());
            pst.setString(10, cli.getPhone());
            pst.setString(11, cli.getFax());

            //Ejecutar la consulta
            int numRows = pst.executeUpdate();
            if (numRows > 0) {
                System.out.println("En la tabla cliente se insertaron " + numRows + " registros correctamente");
            }
            sentinel = true;
        } catch (SQLException e) {
            System.out.println("Error :" + e.getMessage());
        } finally {
            Conexion.cerrarSesion();
        }

        return sentinel;
    }

}
