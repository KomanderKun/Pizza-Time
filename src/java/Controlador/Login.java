/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Mantenimientos.GestionAdmin;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author gmndi
 */
public class Login extends ActionSupport {
    
    String User;
    String Pass;

    public String getUser() {
        return User;
    }

    public void setUser(String User) {
        this.User = User;
    }

    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }
    
    
    
    public String validar(){
        
        boolean valido;
        
        GestionAdmin ga = new GestionAdmin();
        valido = ga.ValidarAdmin(User, Pass);
        
        if(valido)        
            return "success";
        
        else{
            addActionError("Usuario o contraseña invalidos");
            return "error";}
    }
    
}
