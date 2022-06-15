<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-Checkout Cart</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="header.html" %>
    </head>
    <body>
        <%@page import="Dao.cartDao,Bean.cartBean"%> 
        
<%  
String id=request.getParameter("id");  
cartBean ch = cartDao.getCartRecordById(Integer.parseInt(id));  
%> 

<h1 style="padding-left: 20px">Confirm Order</h1>  
<form action="checkout" method="post">
    
<input type="hidden" name="id" value="<%=ch.getId() %>">
<input type="hidden" name="username" value="<%=ch.getUsername() %>">
<input type="hidden" name="orderStatus" value="In-Process">
    <div class="col-sm-8" style="padding-top:30px;padding-left: 70px">
       
       <label for="ex2">Name</label>
       <input type="text" class="form-control" style="border-color: maroon;" name="name" value="<%=ch.getName()%>" readonly>
                                        
    </div>

    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Price</label>
        <input class="form-control" style="border-color: maroon"  
        type="text" name="price" value="<%=ch.getPrice()%>" readonly>
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Quantity</label>
        <input class="form-control" style="border-color: maroon"  
        type="text" name="quantity" value="<%=ch.getQuantity()%>" readonly>
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Total Payment</label>
        <input class="form-control" style="border-color: maroon"  
        type="text" name="tprice" value="<%=ch.getTprice()%>" readonly>
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
     <label for="ex2">Order Date/Time</label>
      <input class="form-control" type="datetime-local" name="date" style="border-color: maroon">
     </div>   
    
    <div class="col-sm-8" style="padding-left: 650px">
        <table>
            <br><tr><td> <a href ='viewCart.jsp' class="btn btn-dark" style="width:80px;">Back</a></td>
                <td style="padding-left: 20px"><button type="submit" class="btn" style="color:white;background-color: black">CheckOut</button></td></tr>
        </table>
        
    </div>
        
        </form>
    </body>
</html>