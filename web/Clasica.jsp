<%-- 
    Document   : Clasica
    Created on : 9/05/2020, 02:46:09 PM
    Author     : andi9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href="estilosMenu.css"
        
    </head>
    <body>
        <h1>Detalles de Pizza</h1>
        
        <img src='img/PEPE.png'>
        
        <h2>La Clasica, la favorita de todos, con Peperoni y mas Peperoni, <br>
        Esperamos que te guste el peperoni :D ¿Ya mencionamos que tiene Peperoni?</h2>
        
           <s:form action="Ordenar">
                <s:submit value="Ordenar"/>
           </s:form>
        
        
        
    </body>
</html>
