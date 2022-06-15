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
        <title>Team06:ROMS-Menu List</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="header.html" %>
    </head>
    <body>
        <!--<//% String us = (String)session.getAttribute("user");%>
        // <//% String n=(String)session.getAttribute("user");  
        out.print("Welcome "+n);  %>-->
        <h2 style="padding-top:10px;padding-left:20px"> Menu List</h2>
       
<%@page import="Dao.foodListDao,Bean.foodListBean,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
            
<%  
List<foodListBean> list= foodListDao.getAllFoodListRecords();  
request.setAttribute("list",list);  
%> 
<c:forEach items="${list}" var="fl">
 <div class="card text-center">
              
  <div class="card-header">
   ${fl.getName()}
  </div>
  <div class="card-body">
      <img src="Food/${fl.getLink()}" style="width:300px;height:200">
      <p class="card-text">${fl.getDescrip()}<br>
      <h6 style='color:red'><b>In-Stock: ${fl.getStock()}</b></h6><br>

          
            -Food Name: <br>${fl.getName()}<br><br>
            -Price: <br>${fl.getPrice()}<br><br>
         <a href="addCart.jsp?id=${fl.getId()}" class="btn" style="background-color: maroon;color:white">Add Cart</a>

  </div>
 </div>
</c:forEach> 
    </body>
</html>
