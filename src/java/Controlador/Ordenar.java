/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author gmndi
 */
public class Ordenar extends ActionSupport{
    
    public List<String> MenuOrden;
    public List<String> Ciudades;
    public List<String> Tam;
    
    public Ordenar(){
        MenuOrden = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet res = null;
        
        try{
            con = Conexion.Conexion.getConexion();
            String sql = "select Nombre from Pizza";
            ps = con.prepareStatement(sql);
            res = ps.executeQuery();
            
            while(res.next()){
                MenuOrden.add(res.getString("Nombre"));
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
        
        
        Ciudades = new ArrayList<>();
        Ciudades.add("Culiacán");
        Ciudades.add("Guadalajara");
        
        Tam = new ArrayList<>();
        Tam.add("Grande");
        Tam.add("Mediana");
        
    }
    
    
    public String ordenar(){
        
        
        
        return "success";
    }
}
