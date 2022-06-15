<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-EmployeeList</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="AdminHeader.html" %>
    </head>
    <body>
        <div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
          <a class="nav-link"  href="FoodList.jsp" style="color:black"><b>Add FoodList</b></a>
      </li>
      <li class="nav-item">
          <a class="nav-link active"  href="viewFoodList.jsp" style="color:maroon"><b>View FoodList</b></a>
      </li>
    </ul>
  </div>
        </div>
            
                <br>  
<%@page import="Dao.foodListDao,Bean.foodListBean,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
            
<%  
List<foodListBean> list= foodListDao.getAllFoodListRecords();  
request.setAttribute("list",list);  
%> 
       <table class="table table-hover"> 
     <thead class="thead-dark">
<tr><th>Id</th>
    <th>Food Name</th>
    <th>Stock Status</th>
    <th>Description</th>
    <th>Price</th>  
    <th>Image Path</th>
    <th>Edit</th>
    <th>Delete</th></tr>  
 </thead>
            <tbody> 
    <c:forEach items="${list}" var="fl">  
    <tr><td>${fl.getId()}</td>
        <td>${fl.getName()}</td>
        <td>${fl.getStock()}</td> 
        <td>${fl.getDescrip()}</td>  
        <td>${fl.getPrice()}</td>
        <td>${fl.getLink()}</td>
        <td><a href="editFoodList.jsp?id=${fl.getId()}" class="btn" style="background-color: maroon;color:white">Edit</a></td>  
<td><a href='deleteFoodList?id=${fl.getId()}' class="btn" style="background-color: maroon;color:white">Delete</a></td></tr>  
</c:forEach>  
</tbody>
</table> 
 </body>
        </html>
