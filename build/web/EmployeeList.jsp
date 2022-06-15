<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-Employeelist</title>
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
          <a class="nav-link active" style="color:maroon" href="Employeelist.jsp"><b>Add Employee</b></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="viewEmployeeList.jsp" style="color:black" ><b>View EmployeeList</b></a>
      </li>
    </ul>
  </div>
  <div class="card-body" style="padding-left: 170px;padding-top: 30px" >
      <form action="empList" method="post">
      <label style="padding-right: 1140px"><b>Name</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
    type="text" placeholder="Enter employee name" name="name" required>
    
    <br><label style="padding-right: 1140px"><b>Gender</b></label>
    
        <select class="form-control" name="gender" style="border-color: maroon;width:500px;" required>
        <option value="---Select---">---Select Gender---</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        </select>
    
    <br><label style="padding-right: 1140px"><b>IC/PassportNO</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
    type="text" placeholder="Enter employee ic/passport no" name="ic" required>
    
    <br><label style="padding-right: 1140px"><b>Nationality</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
    type="text" placeholder="Enter employee's nationality" name="nationality" required>
    
    
    <br><label style="padding-right: 1140px"><b>Address</b></label>
    <textarea class="form-control" style="border-color: maroon;width:500px" 
              placeholder="Enter employee's current address" name="address" required></textarea><br>
    
      <label style="padding-right: 1140px"><b>HP</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
           type="text" name="hp" placeholder="Enter employee's contact number" required><br>
   
    <label style="padding-right: 1140px"><b>Position</b></label>
    <input class="form-control" style="border-color: maroon;width:500px" 
           type="text" name="position" placeholder="Enter employee's position" required><br>
    
   <br><button style="background-color: maroon;color:white;" type="submit" value="submit">
							ADD Employee
						</button>
    <!--<a href="foodList" class="btn" style="background-color: maroon;color:white;">ADD FOOD</a>-->
      </form>
  </div>
</div>
    </body>
</html>
