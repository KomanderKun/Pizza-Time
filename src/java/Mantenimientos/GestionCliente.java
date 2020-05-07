/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mantenimientos;

import Modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author gmndi
 */
public class GestionCliente {
    
    public void RegistrarCliente(Persona cliente){
        
        Connection con = null;
        PreparedStatement ps = null;
        
        try{
            con = Conexion.Conexion.getConexion();
            String sql = "insert into Cliente values(?, ?, ?, ?, ?)";
            ps = con.prepareStatement(sql);
            ps.setInt(1, 0);
            ps.setString(2, cliente.getNombre());
            ps.setString(3, cliente.getDireccion());
            ps.setString(4, cliente.getCiudad());
            ps.setString(5, cliente.getTelefono());
            
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
