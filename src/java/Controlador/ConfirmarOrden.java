/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Mantenimientos.GestionCliente;
import Mantenimientos.GestionOrden;
import Mantenimientos.GestionPizza;
import Modelo.Orden;
import Modelo.Persona;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author gmndi
 */
public class ConfirmarOrden extends ActionSupport {
    
    public Connection con = null;
    public ResultSet res = null;
    public PreparedStatement ps = null;
    public String sql = null;
    
    public String nombre;
    public String direccion;
    public String telefono;
    public String ciudad;
    
    public String NombrePizza;
    public String TamanoPizza;
    public double total;
    
    public List<String> NombresOrden;

    public List<String> getNombresOrden() {
        return NombresOrden;
    }

    public void setNombresOrden(List<String> NombresOrden) {
        this.NombresOrden = NombresOrden;
    }
    
    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        
        
        this.total = total;
    }
    
    public ConfirmarOrden(){
        NombresOrden = new ArrayList<>();
        
        
        
    }
    
    
    
    public String confirmarOrden(){
        
        Persona cliente = new Persona(nombre, direccion, telefono, ciudad);

        try{
            GestionCliente gc = new GestionCliente();
            gc.RegistrarCliente(cliente);
            GestionOrden go = new GestionOrden();
            
            total = go.MostrarPrecioOrdenPorNombre(NombrePizza, TamanoPizza);
            Orden orden = new Orden(nombre, direccion, ciudad, NombrePizza, TamanoPizza, telefono, total);
            
            go.RegistrarOrden(orden);
            return "success";
            
        } catch(Exception e){
            System.out.println(e);
            return "error";
        }
        
    }
}
