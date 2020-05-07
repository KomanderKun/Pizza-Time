<%-- 
    Document   : ReciboOrden
    Created on : 7/05/2020, 12:57:08 PM
    Author     : gmndi
--%>

<%@page import="Controlador.ConfirmarOrden"%>
<%@page import="Controlador.Ordenar"%>
<%@page import="Modelo.Orden"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <%
        Connection con = null;
        PreparedStatement ps;
        ResultSet rs = null;
        String nom = request.getParameter("nombre");
        System.out.println(nom);
        
        
        String DRIVER = "com.mysql.cj.jdbc.Driver";
        String USER = "root";
        String PASSWORD = "root";
        String URL = "jdbc:mysql://localhost:3306/pizza?useTimezone=true&serverTimezone=UTC";
        
        try{
             Class.forName(DRIVER);
             con = DriverManager.getConnection(URL, USER, PASSWORD);
             
             ps = con.prepareStatement("SELECT * FROM Orden where Nombre = '"+nom+"'");//Aquí va el nombre que necesitamos con el s:property
             rs = ps.executeQuery();
             
         } catch(ClassNotFoundException | SQLException e){
             System.out.println(e);
         }

        %>
        
        <h1>Ordenes a nombre de <s:property value="nombre"/></h1>
        <table>
            <tr>
                <th>No. de Orden</th>
                <th>Nombre</th>
                <th>Direccion</th>
                <th>Ciudad</th>
                <th>Telefono</th>
                <th>Pizza</th>
                <th>Tamaños</th>
                <th>Precio</th>
            </tr>
        <%       
         while(rs.next()){         
        %>
        
            <tr>
                <td><%=rs.getString("Id_orden")%></td>
                <td><%=rs.getString("Nombre")%></td>
                <td><%=rs.getString("Direccion")%></td>
                <td><%=rs.getString("Ciudad")%></td>
                <td><%=rs.getString("Telefono")%></td>
                <td> <%=rs.getString("NombrePizza")%></td>
                <td><%=rs.getString("TamanoPizza")%></td>
                <td>$<%=rs.getString("Total")%></td>
            </tr>
            
        <% } %>
        
        <s:form action="RegresarInicio">
            <s:submit value="Regresar a inicio"/>
        </s:form>
    
        
    </body>
</html>
