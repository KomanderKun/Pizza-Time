/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mantenimientos;

import Modelo.Pizza;
import java.sql.*;

/**
 *
 * @author gmndi
 */
public class GestionPizza {
    
    public void RegistrarPizza(Pizza data){
        
        Connection con = null;
        PreparedStatement ps = null;
        
        try{
            con = Conexion.Conexion.getConexion();
            String sql = "insert into Pizza values(?, ?, ?, ?, ?, ?, ?, ?)";
            ps = con.prepareStatement(sql);
            ps.setInt(1, 0);
            ps.setString(2, data.getNombre());
            ps.setString(3, data.getIngrediente1());
            ps.setString(4, data.getIngrediente2());            
            ps.setString(5, data.getPrecio1());
            ps.setString(6, data.getPrecio2());
            ps.setString(7, data.getTam1());
            ps.setString(8, data.getTam2());
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
}
