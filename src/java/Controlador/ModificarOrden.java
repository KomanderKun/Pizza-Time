/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Mantenimientos.GestionOrden;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author gmndi
 */
public class ModificarOrden extends ActionSupport {
    
    public String NombreNuevo;
    public String DireccionNuevo;
    public String TelefonoNuevo;
    public String IdNuevo3;

    public String getNombreNuevo() {
        return NombreNuevo;
    }

    public void setNombreNuevo(String NombreNuevo) {
        this.NombreNuevo = NombreNuevo;
    }

    public String getDireccionNuevo() {
        return DireccionNuevo;
    }

    public void setDireccionNuevo(String DireccionNuevo) {
        this.DireccionNuevo = DireccionNuevo;
    }

    public String getTelefonoNuevo() {
        return TelefonoNuevo;
    }

    public void setTelefonoNuevo(String TelefonoNuevo) {
        this.TelefonoNuevo = TelefonoNuevo;
    }

    public String getIdNuevo3() {
        return IdNuevo3;
    }

    public void setIdNuevo3(String IdNuevo3) {
        this.IdNuevo3 = IdNuevo3;
    }

    
    public String modificar(){
        
        GestionOrden go = new GestionOrden();
        go.ModificarOrden(NombreNuevo, DireccionNuevo, TelefonoNuevo, IdNuevo3);
        
        return "success";
    }
}


