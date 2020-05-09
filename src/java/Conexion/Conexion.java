/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.*;


public class Conexion {
    
    
    public static Connection getConexion(){
        
        String DRIVER = "com.mysql.cj.jdbc.Driver";
        String USER = "root";
        String PASSWORD = "root";
        String URL = "jdbc:mysql://localhost:3306/pizza?useTimezone=true&serverTimezone=UTC";
        
        Connection con = null;
         try{
             Class.forName(DRIVER);
             con = DriverManager.getConnection(URL, USER, PASSWORD);
         } catch(ClassNotFoundException | SQLException e){
             System.out.println(e);
         }
         return con;
    }
}
