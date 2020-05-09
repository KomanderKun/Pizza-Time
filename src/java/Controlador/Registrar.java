/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Mantenimientos.GestionAdmin;
import Modelo.Admin;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author gmndi
 */
public class Registrar extends ActionSupport {
    
    String UsuarioRegistro;
    String ContraRegistro;
    
    Admin admin;

    public String getUsuarioRegistro() {
        return UsuarioRegistro;
    }

    public void setUsuarioRegistro(String UsuarioRegistro) {
        this.UsuarioRegistro = UsuarioRegistro;
    }

    public String getContraRegistro() {
        return ContraRegistro;
    }

    public void setContraRegistro(String ContraRegistro) {
        this.ContraRegistro = ContraRegistro;
    }

    
    
    
    
    
    
    public String mostrar(){
        
        return "success";
    }
    
    public String validar(){
        
        admin = new Admin(UsuarioRegistro, ContraRegistro);
        GestionAdmin ga = new GestionAdmin();
        ga.RegistrarAdmin(admin);
        
        
        return "success";
    }
    
}
