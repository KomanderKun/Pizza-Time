<%-- 
    Document   : VerOrdenes
    Created on : 8/05/2020, 03:06:13 PM
    Author     : gmndi
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h3>Ordenes</h3>
        
        
        <%
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
             
             ps = con.prepareStatement("SELECT * FROM orden");
             rs = ps.executeQuery();
             
             
             
         } catch(ClassNotFoundException | SQLException e){
             System.out.println(e);
         }
        %>
        
        <table>
            <tr>
                <th>No. de Orden</th>
                <th>Nombre</th>
                <th>Ingredientes</th>
                <th>Tamaños</th>
                <th>Precios</th>
                <th>Opciones</th>
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
                <td><%=rs.getString("NombrePizza")%></td>
                <td><%=rs.getString("TamanoPizza")%></td>
                <td>$<%=rs.getString("Total")%></td>
                <td><a href="ModificarOrden.jsp?Id_Orden=<%=rs.getString("Id_orden") %>">Editar</a></td>
                    
            </tr>
              
        <% } %>

        </table>
    </body>
</html>
