<%-- 
    Document   : Login
    Created on : 9/05/2020, 01:31:01 PM
    Author     : gmndi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet"/>  
        <title>Iniciar Sesion</title>
    </head>
    <body>
    <div class="sesion">
        <h1>Iniciar Sesion</h1>
        
        <s:actionerror/>
        
        <s:form action="Validar">
            <s:textfield name="User" label="Usuario"/>
            <s:textfield name="Pass" label="Contraseña"/>
            
            <s:submit value="Entrar"/>
        </s:form>
        
        <s:form action="MostrarRegistro">
            
            <s:submit value="Registrar"/>
        </s:form>
    </div>
    </body>
</html>
