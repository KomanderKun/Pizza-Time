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
public class Pizza {
    
    String Ingrediente1;
    String Ingrediente2;
    String Precio1;
    String Precio2;
    String Tam1;
    String Tam2;
    String Nombre;

    public Pizza(String Nombre, String Ingrediente1, String Ingrediente2, String Precio1, String Precio2, String Tam1, String Tam2) {
        super();
        this.Nombre = Nombre;
        this.Ingrediente1 = Ingrediente1;
        this.Ingrediente2 = Ingrediente2;
        this.Precio1 = Precio1;
        this.Precio2 = Precio2;
        this.Tam1 = Tam1;
        this.Tam2 = Tam2;
    }
    
    

    public String getIngrediente1() {
        return Ingrediente1;
    }

    public void setIngrediente1(String Ingrediente1) {
        this.Ingrediente1 = Ingrediente1;
    }

    public String getIngrediente2() {
        return Ingrediente2;
    }

    public void setIngrediente2(String Ingrediente2) {
        this.Ingrediente2 = Ingrediente2;
    }

    public String getPrecio1() {
        return Precio1;
    }

    public void setPrecio1(String Precio1) {
        this.Precio1 = Precio1;
    }

    public String getPrecio2() {
        return Precio2;
    }

    public void setPrecio2(String Precio2) {
        this.Precio2 = Precio2;
    }

    public String getTam1() {
        return Tam1;
    }

    public void setTam1(String Tam1) {
        this.Tam1 = Tam1;
    }

    public String getTam2() {
        return Tam2;
    }

    public void setTam2(String Tam2) {
        this.Tam2 = Tam2;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    
    
    
}
