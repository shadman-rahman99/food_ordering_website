<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-View Cart</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="header.html" %>
    </head>
    <body><br>
        <small><b>**Note: Delivery fee is RM 1</b></small>
 <table class="table table-hover">
               <thead class="thead-dark text-center">
<tr><th>Id</th>
    <th>Food Name</th>
    <th>Price/pc</th>
    <th>Quantity</th>
    <th>Total Price(Incl Delivery Fee)</th>  
    <th>Ordered BY</th>
    <th>Edit</th>
    <th>CheckOut</th>
    <th>Delete</th></tr>  
 </thead>
        <%
        try
        {
          Connection conn;
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");
          Statement stmt = conn.createStatement();
          String us = (String)session.getAttribute("user");
          String sl = "select * from cart where username='"+us+"'";
          ResultSet rs = stmt.executeQuery(sl);
          while(rs.next())
          {
          %>
 
        <tbody class="text-center"> 
        <tr><td><%out.println(rs.getInt(1));%></td>
        <td><%out.println(rs.getString(3));%></td>
        <td><%out.println(rs.getDouble(4));%></td>
        <td><%out.println(rs.getInt(5));%></td>
        <td><%out.println(rs.getDouble(6));%></td>
        <td><%out.println(rs.getString(2));%></td>
        <td><a href="editCart.jsp?id=<%=rs.getString(1)%>" class="btn" style="background-color: maroon;color:white">Edit</a></td>  
        <td><a href="checkout.jsp?id=<%=rs.getString(1)%>" class="btn" style="background-color: maroon;color:white">CheckOut</a></td>
        <td><a href='deleteCart?id=<%=rs.getString(1)%>' class="btn" style="background-color: maroon;color:white">Delete</a></td></tr>  
 
 <% }
        


}catch(Exception e){
          out.println(e);
        } 

        %>
 </table>

    </body>
</html>