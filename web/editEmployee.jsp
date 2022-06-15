<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-Edit Employee</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="AdminHeader.html" %>
    </head>
    <body>
        <%@page import="Dao.employeeDao,Bean.employeeBean"%>  
  
<%  
String id=request.getParameter("id");  
employeeBean e = employeeDao.getEmployeeRecordById(Integer.parseInt(id));  
%>  

<h1 style="padding-left: 20px">Edit Employee Form</h1>  
<form action="editEmployee" method="post">
    
<input type="hidden" name="id" value="<%=e.getId() %>">
    <div class="col-sm-8" style="padding-top:30px;padding-left: 70px">
       
       <label for="ex2">Name</label>
       <input type="text" class="form-control" style="border-color: maroon;" name="name" value="<%=e.getName()%>" required>
                                        
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">

       <label for="ex2">Gender</label>
       <select class="form-control" name="gender" style="border-color: maroon;" required>
        <option value="---Select---">---Select Gender---</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        </select>
                                        
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
    <label for="ex2">IC/PassportNo</label>
    <input class="form-control" style="border-color: maroon;"  
    type="text" name="ic" value="<%=e.getIc()%>" required>
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
    <label for="ex2">Nationality</label>
    <input class="form-control" style="border-color: maroon;"  
    type="text" name="nationality" value="<%=e.getNationality()%>" required>
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Address</label>
        <textarea class="form-control" style="border-color: maroon"  
                  name="address" required><%=e.getAddress()%></textarea>
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">ContactNo</label>
        <input class="form-control" style="border-color: maroon"  
        type="text" name="hp" value="<%=e.getHp()%>" required>
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Position</label>
        <input class="form-control" style="border-color: maroon"  
        type="text" name="position" value="<%=e.getPosition()%>" required>
    </div>
        
    
    <div class="col-sm-8" style="padding-left: 650px">
        <table>
            <br><tr><td> <a href ='viewEmployeeList.jsp' class="btn btn-dark" style="width:80px;">Back</a></td>
                <td style="padding-left: 20px"><button type="submit" class="btn" style="color:white;background-color: black">Update</button></td></tr>
        </table>
        
    </div>
        
        </form>
    </body>
</html>
