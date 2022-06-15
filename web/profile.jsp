<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="Bean.userloginBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team06:ROMS-User Profile</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="header.html" %>
    </head>
    <body>
   
        <h2 style="padding-top:10px;padding-left:20px"> My Profile</h2> 
        <table>
        <%
        try
        {
          Connection conn;
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");
          Statement stmt = conn.createStatement();
          String us = (String)session.getAttribute("user");
          String sl = "select * from register where username='"+us+"'";
          ResultSet rs = stmt.executeQuery(sl);
          if(rs.next())
          {
          %>
          
          <tr><td style="padding-left: 180px">Username:</td><td style="padding-left: 60px"><%out.println(rs.getString(2));%></td></tr>
          <tr><td style="padding-left: 180px">Password:</td><td style="padding-left: 60px"><%out.println(rs.getString(3));%></td></tr>
          <tr><td style="padding-left: 180px">HP:</td><td style="padding-left: 60px"><%out.println(rs.getString(4));%></td></tr>
          <tr><td style="padding-left: 180px">Email:</td><td style="padding-left: 60px"><%out.println(rs.getString(5));%></td></tr>
          <tr><td></td></tr><br>
          <td></td><br><td style="padding-left: 230px;padding-top: 35px"><a href='editProfile.jsp?u=<%=rs.getString(1)%>' style="color:white" class="btn btn-dark">Edit </a></td>
         <% }
        


}catch(Exception e){
          out.println(e);
        } 

        %>
 
        </table>
        
    </body>
</html>
