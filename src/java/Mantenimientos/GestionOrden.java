/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mantenimientos;

import Modelo.Orden;
import Modelo.Persona;
import java.sql.*;

/**
 *
 * @author gmndi
 */
public class GestionOrden {
    
     public void RegistrarOrden(Orden orden){
        
        Connection con = null;
        PreparedStatement ps = null;
        
        try{
            con = Conexion.Conexion.getConexion();
            String sql = "insert into Orden values(?, ?, ?, ?, ?, ?, ?, ?)";
            ps = con.prepareStatement(sql);
            ps.setInt(1, 0);
            ps.setString(2, orden.getNombre());
            ps.setString(3, orden.getDireccion());
            ps.setString(4, orden.getCiudad());
            ps.setString(5, orden.getTelefono());
            ps.setString(6, orden.getNombrePizza());
            ps.setString(7, orden.getTamanoPizza());
            ps.setDouble(8, orden.getTotal());
            
            ps.executeUpdate();
            
        } catch(SQLException e){
            System.out.println(e);
        } finally{
            try{
                if(ps != null){
                    ps.close();
                }
                
                if(con != null){
                    con.close();
                }
                
            }catch(SQLException e){
                        System.out.println(e);
                }
            
        }
        
    
    }
     
     public double MostrarPrecioOrdenPorNombre(String nombre, String tam){
         
         Double totalprron = 0.0;
         String total = null;
         
         String sql = null;
         Connection con = null;
         PreparedStatement ps = null;
         ResultSet rs = null;
         
         
         try{
            con = Conexion.Conexion.getConexion();
            sql = "select precio1, precio2 from pizza where Nombre = '".concat(nombre).concat("'");
            ps = con.prepareStatement(sql);           
            rs = ps.executeQuery();
            
            while(rs.next()){
            
                if(tam.equals("Grande")){
                    total = rs.getString("precio1");
                    totalprron = Double.parseDouble(total);
                }

                if(tam.equalsIgnoreCase("Mediana")){
                    total = rs.getString("precio2");
                    totalprron = Double.parseDouble(total);
                }
                
            }
             System.out.println("sql syntax: "+sql);
             System.out.println("A nombre de: "+nombre);
             System.out.println(total);
             System.out.println(totalprron);
            
        } catch(SQLException e){
            System.out.println(e);
        } 
            
        
         
         return totalprron;
     }
    
}
