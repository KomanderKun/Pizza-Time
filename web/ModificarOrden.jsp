<%-- 
    Document   : ModificarOrden
    Created on : 8/05/2020, 06:12:55 PM
    Author     : gmndi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <% 
        int Id = Integer.parseInt(request.getParameter("Id_Orden"));
        String DRIVER = "com.mysql.cj.jdbc.Driver";
        String USER = "root";
        String PASSWORD = "root";
        String URL = "jdbc:mysql://localhost:3306/pizza?useTimezone=true&serverTimezone=UTC";
        
        Connection con = null;
        PreparedStatement ps;
        ResultSet rs = null;
        
        try{
            
            
             Class.forName(DRIVER);
             con = DriverManager.getConnection(URL, USER, PASSWORD);
             
             ps = con.prepareStatement("SELECT * FROM orden where Id_orden='"+Id+"'");
             rs = ps.executeQuery();
             
             
             
         } catch(ClassNotFoundException | SQLException e){
             System.out.println(e);
         }
    %>
    <body>
        <h1>Modificar una orden</h1>
        Nota: No se pueden editar todos los valores de una orden.
        
        <% while(rs.next()){ %>
        
        <table>
            <tr>
                <th>No. de Orden</th>
                <th>A nombre de</th>
                <th>Direccion</th>
                <th>Ciudad</th>
                <th>Telefono</th>
                <th>Pizza</th>
                <th>Tamaño</th>
                <th>Precio</th>
                
            </tr>
            <tr>
                <td><%= rs.getString("Id_orden")%></td>
                <td><%= rs.getString("Nombre")%></td>
                <td><%= rs.getString("Direccion")%></td>
                <td><%= rs.getString("Ciudad")%></td>
                <td><%= rs.getString("Telefono")%></td>
                <td><%= rs.getString("NombrePizza")%></td>
                <td><%= rs.getString("TamanoPizza")%></td>
                <td><%= rs.getString("total")%></td>                
            </tr>
            
        </table>
            
            
        
        
        
        <s:form action="ModificarOrden">
            
            <h2>Elementos que puedes modificar</h2>
            
            <s:set var="IdNuevo" name="IdNuevo"><%= rs.getString("Id_orden")%></s:set>
            
            <s:textfield name="IdNuevo3" value="%{#IdNuevo}" label="Id"/>
            <s:textfield name="NombreNuevo" label="Nombre"/>
            <s:textarea name="DireccionNuevo" label="Direccion"/>
            <s:textfield name="TelefonoNuevo" type="number" label="Telefono"/>
            
            
            
            <s:submit value="Modificar"/>
        </s:form>
        
        <% } %>
    </body>
</html>
