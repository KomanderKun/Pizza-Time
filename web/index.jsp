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
        <title>JSP Page</title>
    </head>
    <body>
        <s:form action="MostrarAggPizza">
            
            <s:submit value="Agregar Pizza"/>
        </s:form>
        
        <s:form action="MostrarListaPizzas">
            
            <s:submit value="Ver la lista de pizzas"/>
        </s:form>
    </body>
</html>
