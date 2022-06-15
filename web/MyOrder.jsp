<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-My Order</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="header.html" %>
    </head>
    <body><br>
 <table class="table table-hover">
               <thead class="thead-dark">
<tr><th>Id</th>
    <th>Food Name</th>
    <th>Price/pc</th>
    <th>Quantity</th>
    <th>Total Price</th>  
    <th>Ordered BY</th>
    <th>Order Status</th>
    <th>Order Date/Time</th>
 </thead>
        <%
        try
        {
          Connection conn;
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");
          Statement stmt = conn.createStatement();
          String us = (String)session.getAttribute("user");
          String sl = "select * from checkout where username='"+us+"'";
          ResultSet rs = stmt.executeQuery(sl);
          while(rs.next())
          {
          %>
 
        <tbody> 
        <tr><td><%out.println(rs.getInt(1));%></td>
        <td><%out.println(rs.getString(3));%></td>
        <td><%out.println(rs.getDouble(4));%></td>
        <td><%out.println(rs.getInt(5));%></td>
        <td><%out.println(rs.getDouble(6));%></td>
        <td><%out.println(rs.getString(2));%></td>
        <td><%out.println(rs.getString(7));%></td>
        <td><%out.println(rs.getString(8));%></td></tr>
       
 <% }
        


}catch(Exception e){
          out.println(e);
        } 

        %>
 </table>

    </body>
</html>