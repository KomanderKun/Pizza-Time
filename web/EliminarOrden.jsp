<%-- 
    Document   : EliminarOrden
    Created on : 8/05/2020, 10:54:33 PM
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
       <%Connection con;
        String URL = "jdbc:mysql://localhost:3306/pizza?useTimezone=true&serverTimezone=UTC";
        String Driver = "com.mysql.cj.jdbc.Driver";
        String USER = "root";
        String PASSWORD = "root";
        Class.forName(Driver);
        con = DriverManager.getConnection(URL, USER, PASSWORD);
        PreparedStatement ps;
        ResultSet res;
        int ID = Integer.parseInt(request.getParameter("Id_Orden"));
        ps = con.prepareStatement("delete FROM orden where Id_orden="+ID);
        ps.executeUpdate();
        response.sendRedirect("VerOrdenes.jsp");
            %>
    </body>
</html>
