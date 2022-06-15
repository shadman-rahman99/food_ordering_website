<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-Foodlist</title>
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
          <a href="FoodList.jsp" class="nav-link active" style="color:maroon"><b>Add FoodList</b></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="viewFoodList.jsp" style="color:black" ><b>View FoodList</b></a>
      </li>
    </ul>
  </div>
  <div class="card-body" style="padding-left: 170px;padding-top: 30px" >
      <form action="foodList" method="post">
      <label style="padding-right: 1140px"><b>Name</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
    type="text" placeholder="Enter food name" name="name" required>
    
    <br><label style="padding-right: 1140px"><b>Stock</b></label>
    
        <select class="form-control" name="stock" style="border-color: maroon;width:500px;" required>
        <option value="---Select---">---Select Stock Status---</option>
        <option value="Available">Available</option>
        <option value="Unavailable">Unavailable</option>
        </select>
        
    <br><label style="padding-right: 1140px"><b>Description</b></label>
    <textarea class="form-control" style="border-color: maroon;width:500px" name="descrip" required></textarea><br>
    
      <label style="padding-right: 1140px"><b>Price</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
           type="text" name="price" placeholder="Enter food price" required><br>
   
    <label style="padding-right: 1140px"><b>Image</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
           type="text" name="link" placeholder="Enter image link/path" required><br>
    
   <br><button style="background-color: maroon;color:white;" type="submit" value="submit">
							ADD FOOD
						</button>
    <!--<a href="foodList" class="btn" style="background-color: maroon;color:white;">ADD FOOD</a>-->
      </form>
  </div>
</div>
    </body>
</html>
