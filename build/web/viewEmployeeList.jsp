<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
          <a class="nav-link"  href="EmployeeList.jsp" style="color:black"><b>Add Employee</b></a>
      </li>
      <li class="nav-item">
          <a class="nav-link active"  href="viewEmployeeList.jsp" style="color:maroon"><b>View Employee List</b></a>
      </li>
    </ul>
  </div>
        </div>
            <br>  
<%@page import="Dao.employeeDao,Bean.employeeBean,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
            
<%  
List<employeeBean> list= employeeDao.getAllEmployeeRecords();  
request.setAttribute("list",list);  
%>  
  
<table class="table table-hover"> 
     <thead class="thead-dark">
<tr><th>Id</th>
    <th>Name</th>
    <th>Gender</th>
    <th>IC</th>
    <th>Nationality</th>  
    <th>Address</th>
    <th>HP</th>
    <th>Position</th>
    <th>Edit</th>
    <th>Delete</th></tr>  
 </thead>
            <tbody>
<c:forEach items="${list}" var="e">  
<tr><td>${e.getId()}</td><td>${e.getName()}</td>
    <td>${e.getGender()}</td> 
    <td>${e.getIc()}</td>  
    <td>${e.getNationality()}</td>
    <td>${e.getAddress()}</td>
    <td>${e.getHp()}</td>
    <td>${e.getPosition()}</td> 
<td><a href="editEmployee.jsp?id=${e.getId()}" class="btn" style="background-color: maroon;color:white">Edit</a></td>  
<td><a href='deleteEmployee?id=${e.getId()}' class="btn" style="background-color: maroon;color:white">Delete</a></td></tr>  
</c:forEach>  
</tbody>
</table>   
        </body>
</html>
