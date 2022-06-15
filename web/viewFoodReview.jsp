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
        <title>Team06:ROMS-ViewFoodReview</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="AdminHeader.html" %>
    </head>
    <body>
         <br>  
<%@page import="Dao.foodReviewDao,Bean.foodReviewBean,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
        <h1 style="color:maroon;padding-left: 30px;padding-top: 10px">Customer Food Reviews</h1>

<%  
List<foodReviewBean> list= foodReviewDao.getAllReviewRecords();  
request.setAttribute("list",list);  
%>  
<c:forEach items="${list}" var="fr"> 
<div class="card">
  <h5 class="card-header">${fr.getName()}</h5>
  <div class="card-body">
    <h5 class="card-title">Rate: ${fr.getRate()}</h5>
    <p class="card-text">Comments: ${fr.getComment()}</p>
    <small>Date/Time: ${fr.getDate()}</small>
  </div>
</div>
  </c:forEach>  
               
    </body>
</html>

