<%-- 
    Document   : Perrona
    Created on : 9/05/2020, 02:43:53 PM
    Author     : andi9
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href="estilosMenu.css"
<!DOCTYPE html>

    </head>
    <body>
         <h1>Detalles de Pizza</h1>
         
        <img src='img/hawaii.png'>
         
        <h2>Aqui no eres juzgado si te gusta la pizza con piña,<br>
            es por eso que aqui no se llama Hawaiana, pidela con masa crunchy o normal<br>
            con Piña, Peperoni y Jamon en sus ingredientes. </h2>
        
        <s:form action="Ordenar">
            <s:submit value="Ordenar"/>
        </s:form>
    </body>
</html>