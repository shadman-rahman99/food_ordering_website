<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-Edit FoodList</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <%@include file="AdminHeader.html" %>
    </head>
    <body>
        <%@page import="Dao.foodListDao,Bean.foodListBean"%> 
        
<%  
String id=request.getParameter("id");  
foodListBean fl = foodListDao.getFoodListRecordById(Integer.parseInt(id));  
%> 

<h1 style="padding-left: 20px">Edit Food List</h1>  
<form action="editFoodList" method="post">
    
<input type="hidden" name="id" value="<%=fl.getId() %>">
    <div class="col-sm-8" style="padding-top:30px;padding-left: 70px">
       
       <label for="ex2">Name</label>
       <input type="text" class="form-control" style="border-color: maroon;" name="name" value="<%=fl.getName()%>" required>
                                        
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">

       <label for="ex2">Stock</label>
       <select class="form-control" name="stock" style="border-color: maroon;" required>
        <option value="---Select---">---Select Stock Status---</option>
        <option value="Available">Available</option>
        <option value="Unavailable">Unavailable</option>
        </select>
                                        
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Description</label>
        <textarea class="form-control" style="border-color: maroon"  
                  name="descrip" required><%=fl.getDescrip()%></textarea>
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Price</label>
        <input class="form-control" style="border-color: maroon"  
        type="text" name="price" value="<%=fl.getPrice()%>" required>
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Image</label>
        <input class="form-control" style="border-color: maroon"  
        type="text" name="link" value="<%=fl.getLink()%>" required>
    </div>
    
        
    
    <div class="col-sm-8" style="padding-left: 650px">
        <table>
            <br><tr><td> <a href ='viewFoodList.jsp' class="btn btn-dark" style="width:80px;">Back</a></td>
                <td style="padding-left: 20px"><button type="submit" class="btn" style="color:white;background-color: black">Update</button></td></tr>
        </table>
        
    </div>
        
        </form>
    </body>
</html>