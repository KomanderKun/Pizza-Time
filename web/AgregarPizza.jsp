<%-- 
    Document   : AgregarPizza
    Created on : 6/05/2020, 05:18:02 PM
    Author     : gmndi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:form action="AgregarPizza">
            
            <s:textfield name="Nombre" label="Nombre"/>
            
            <s:select name="Ingrediente1" label="Ingrediente 1"  list="Ingredientes"/>
            <s:select name="Ingrediente2" label="Ingrediente 2"  headerKey="-1" headerValue="Ninguno" value="Ninguno" list="Ingredientes"/>
            
            <s:textfield name="Tam1" label="Tamaño 1" readonly="true" value="Grande"/>
            <s:textfield name="Tam2" label="Tamaño 2" readonly="true" value="Mediana"/>
            
            <s:textfield name="Precio1" label="Precio Tamaño 1"/>
            <s:textfield name="Precio2" label="Precio Tamaño 2"/>
            
            <s:submit value="Agregar"/>
            <s:reset value="Reiniciar"/>
            
        </s:form>
    </body>
</html>
