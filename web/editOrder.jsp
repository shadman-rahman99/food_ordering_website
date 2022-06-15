<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-Edit Order</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="AdminHeader.html" %>
    </head>
    <body>
        <%@page import="Dao.checkoutDao,Bean.ckeckoutBean"%>  
  
<%  
String id=request.getParameter("id");  
ckeckoutBean ch = checkoutDao.getOrderById(Integer.parseInt(id));  
%>  

<h1 style="padding-left: 20px">Edit Employee Form</h1>  
<form action="editOrder" method="post">
    
<input type="hidden" name="id" value="<%=ch.getId() %>">
<input type="hidden" name="username" value="<%=ch.getUsername() %>">
    <div class="col-sm-8" style="padding-top:30px;padding-left: 70px">
       
       <label for="ex2">Name</label>
       <input type="text" class="form-control" style="border-color: maroon;" name="name" value="<%=ch.getName()%>" readonly>
                                        
    </div>                                  
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
    <label for="ex2">Price</label>
    <input class="form-control" style="border-color: maroon;"  
    type="text" name="price" value="<%=ch.getPrice()%>" readonly>
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
    <label for="ex2">Quantity</label>
    <input class="form-control" style="border-color: maroon;"  
    type="text" name="quantity" value="<%=ch.getQuantity()%>" readonly>
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
    <label for="ex2">Total Price</label>
    <input class="form-control" style="border-color: maroon;"  
    type="text" name="tprice" value="<%=ch.getTprice()%>" readonly>
    </div>                        

        <div class="col-sm-8" style="padding-left: 70px">

       <label for="ex2">OrderStatus</label>
       <select class="form-control" name="orderStatus" style="border-color: maroon;" required>
        <option value="---Select---">---Select Status---</option>
        <option value="Accepted">Accepted</option>
        <option value="Canceled">Canceled</option>
        <option value="In-Process">In-Process</option>
        </select>
                                        
    </div>
        <div class="col-sm-8" style="padding-left: 70px">
    <label for="ex2">Order Date/Time</label>
    <input class="form-control" style="border-color: maroon;"  
    type="text" name="date" value="<%=ch.getDate()%>" readonly>
    </div>  
    
    <div class="col-sm-8" style="padding-left: 650px">
        <table>
            <br><tr><td> <a href ='viewOrder.jsp' class="btn btn-dark" style="width:80px;">Back</a></td>
                <td style="padding-left: 20px"><button type="submit" class="btn" style="color:white;background-color: black">Update</button></td></tr>
        </table>
        
    </div>
        
        </form>
    </body>
</html>
