<%-- 
    Document   : Registro
    Created on : 9/05/2020, 01:30:49 PM
    Author     : gmndi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet"/>  
        <title>Registro</title>
    </head>
    <body>
        <s:form action="ValidarRegistro">
            
            <s:textfield name="UsuarioRegistro" label="Usuario"/>
            <s:textfield name="ContraRegistro" label="Contraseña"/>
            <s:textfield name="ContraRegistro2" label="Confirmar contraseña"/>
            
            <s:submit value="Registrar"/>
        </s:form>
    </body>
</html>
