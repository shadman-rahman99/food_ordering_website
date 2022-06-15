
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.text.DecimalFormat"%> 
<%@page import="java.time.LocalDateTime "%>  
<%@page import ="java.sql.Timestamp"%>
<%@page import ="java.text.DateFormat"%>
<%@page import ="java.text.ParseException"%>
<%@page import ="java.text.SimpleDateFormat"%>
<%@page import ="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team06:ROMS-Report</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="AdminHeader.html" %>
    </head>
    <body>
        
 <%@page import="Controller.GenReportCtrl,Bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
        
 <%        
List<GenReport> list= GenReportCtrl.getAllRecords();  
request.setAttribute("list",list);     

String grossProfit = GenReportCtrl.getGrossProfit();
request.setAttribute("grossProfit",grossProfit);

String totalCost = GenReportCtrl.getTotalCost();
request.setAttribute("totalCost",totalCost);

String netProfit = GenReportCtrl.getNetProfit();
request.setAttribute("netProfit",netProfit);

    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
    LocalDateTime now = LocalDateTime.now(); 
    String year = dtf.format(now).substring(0, 4);
    String month = dtf.format(now).substring(5, 7);
    String firstDate = "01-"+month+"-"+year;
    String lastDate = "31-"+month+"-"+year;
    request.setAttribute("firstDate",firstDate);
    request.setAttribute("lastDate",lastDate);
    
 %>       
         
        
        
        
<div class="card text-center">
  <div class="card-header">
      <h4>Sales Report for: ${firstDate} to ${lastDate}</h4>
  </div>
  
  <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Order ID</th>
      <th scope="col">Item Name</th>
      <th scope="col">Quantity</th>
      <th scope="col">Cost Price</th>
      <th scope="col">Selling Price</th>
      <th scope="col">Order Status</th>
 
    </tr>
  </thead>
  <tbody>
 
 <c:forEach items="${list}" var="r">  
<tr>
    <th>${r.getId()}</th>
    <td>${r.getName()}</td>
    <td>${r.getQuantity()}</td>
    <td>${r.getPrice()}</td>
    <td>${r.getTprice()}</td>
    <td>${r.getOrderStatus()}</td>
</tr>
</c:forEach>  

  </tbody>
</table>  
    
<table class="table table-dark">
  <tbody>
    <tr>
      <th>Gross Profit</th>
      <td></td>
      <td></td>
      <td>${grossProfit}</td>
    </tr>
    
     <tr>
      <th >Total Cost Price</th>
      <td ></td>
      <td ></td>
      <td>${totalCost}</td>
    </tr>
    
    <tr>
    <th>Net Profit</th>
     <td ></td>
     <td ></td>
    <td>${netProfit}</td>
    </tr>  
  </tbody>
  </table>            
</div>
      
        <div class="text-dark" style="margin-left: 500px" >
            <h4>Burger Station &copy 2021</h4>  
        </div>
        
 </body>
</html>
