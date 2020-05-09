<%-- 
    Document   : index
    Created on : 6/05/2020, 05:08:20 PM
    Author     : gmndi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Domino's Pizza</title>
        <link rel='stylesheet' href="estilos.css"
    </head>
    <body>
        <h1>Bienvenido a Domino's Pizza </h1>
        
        <header>
            <div class='head'>
                <h2>Menú</h2>
            </div>
            
            <nav>
                <ul>
                    
                    <li> <s:form action="MostrarAggPizza">
            
                            <s:submit value="Agregar Pizza"/>
                        </s:form>
                    </li>
                    
                    <li>  
                        <s:form action="MostrarListaPizzas">
            
                           <s:submit value="Ver la lista de pizzas"/>
                        </s:form>
                    </li>
                    
                </ul>
            </nav>
            
        </header>
        
        
    <showcase>
        <div class='container'>
             <h2> La mejor Pizza de México</h2>
        
             <div class='category'>
                 
                 <div class='PizzaPepe'>
                     <img src='img/PEPE.png'>
                     
                     <h4>Nuestra pizza clasica</h4>
                     
                     
                 </div>
                 <div class='PizzaCham'>
                     <img src='img/Champ.jpg'>
                     
                     <h4>La favorita</h4>
                     
                     
                 </div>
                 
                  <div class='PizzaHawai'>
                     <img src='img/HAWAIA.jpg'>
                     
                     <h4>De Hawaii</h4>
                     
                     
                 </div>
                 
                 
                 
             </div>
             
             
        </div>
    </showcase>
        
        
        
        
        
        <s:form action="MostrarAggPizza">
            
            <s:submit value="Agregar Pizza"/>
        </s:form>
        
        
        
        <s:form action="MostrarListaPizzas">
            
            <s:submit value="Ver la lista de pizzas"/>
        </s:form>
        
        <s:form action="MostrarListaOrdenes">
            
            <s:submit value="Ver Lista de Ordenes"/>
        </s:form>
    </body>
</html>
