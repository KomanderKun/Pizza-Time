/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author gmndi
 */
public class Admin {
    
    public String Nombre;
    public String Contra;

    public Admin(String Nombre, String Contra) {
        super();
        this.Nombre = Nombre;
        this.Contra = Contra;
    }
    
    

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getContra() {
        return Contra;
    }

    public void setContra(String Contra) {
        this.Contra = Contra;
    }
    
    
    
}
