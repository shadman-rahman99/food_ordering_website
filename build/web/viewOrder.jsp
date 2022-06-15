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
        <title>Team 06:ROMS-OrderList</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="AdminHeader.html" %>
    </head>
    <body>
            <br>  
<%@page import="Dao.checkoutDao,Bean.ckeckoutBean,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
            
<%  
List<ckeckoutBean> list= checkoutDao.getAllOrderRecords();  
request.setAttribute("list",list);  
%>  
  
<table class="table table-hover text-center"> 
     <thead class="thead-dark">
<tr><th>Id</th>
    <th>Food Name</th>
    <th>Price/PC</th>
    <th>Quantity</th>
    <th>Total Price(Incl Delivery Fee)</th>  
    <th>Order By</th>
    <th>Order Status</th>
    <th>Order Date/Time</th>
    <th>Edit</th>
    <th>Delete</th></tr>  
 </thead>
            <tbody class="text-center">
<c:forEach items="${list}" var="ch">  
<tr><td>${ch.getId()}</td>
    <td>${ch.getName()}</td>
    <td>${ch.getPrice()}</td> 
    <td>${ch.getQuantity()}</td>  
    <td>${ch.getTprice()}</td>
    <td>${ch.getUsername()}</td>
    <td>${ch.getOrderStatus()}</td>
    <td>${ch.getDate()}</td>
<td><a href="editOrder.jsp?id=${ch.getId()}" class="btn" style="background-color: maroon;color:white">Edit</a></td>  
<td><a href='deleteOrder?id=${ch.getId()}' class="btn" style="background-color: maroon;color:white">Delete</a></td></tr>  
</c:forEach>  
</tbody>
</table>   
        </body>
</html>
