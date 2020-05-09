/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mantenimientos;

import Modelo.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author gmndi
 */
public class GestionAdmin {
    
    public void RegistrarAdmin(Admin admin){
        
        Connection con = null;
        PreparedStatement ps = null;
        
        try{
            con = Conexion.Conexion.getConexion();
            String sql = "insert into administrador values(?, ?, ?)";
            ps = con.prepareStatement(sql);
            ps.setInt(1, 0);
            ps.setString(2, admin.getNombre());
            ps.setString(3, admin.getContra());
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
    
    public boolean ValidarAdmin(String user, String pass){
        
        boolean Valido = false;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try{
            con = Conexion.Conexion.getConexion();
            String sql = "select * from Administrador where Nombre='"+user+"'";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                if(user.equals(rs.getString("Nombre")) && pass.equals(rs.getString("Contrasena")))
                    Valido = true;
                else
                    Valido = false;
                
            }
                
            
            
            
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
        
        return Valido;
    }
    
}
