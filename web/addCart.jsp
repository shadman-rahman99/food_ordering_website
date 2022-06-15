<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team 06:ROMS-Add Cart</title>
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

<h1 style="padding-left: 20px">Add Order</h1>  
<form action="cart" method="post">
    
<!--<input type="hidden" name="id" value="</%=fl.getId() %>">-->
    <div class="col-sm-8" style="padding-top:30px;padding-left: 70px">
       
       <label for="ex2">Food</label>
       <input type="text" class="form-control" style="border-color: maroon;" name="name" value="<%=fl.getName()%>" readonly>
                                        
    </div>
                       
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Price</label>
        <input class="form-control" style="border-color: maroon"  
               type="text" name="price" value="<%=fl.getPrice()%>" readonly>
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Quantity</label>
        <input class="form-control" style="border-color: maroon"  
        type="text" name="quantity" required>
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">OrderBy:</label>

    
    <%
        try
        {
          Connection conn;
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");
          Statement stmt = conn.createStatement();
          String u=(String)session.getAttribute("user");
          String sl = "select * from register where username='"+u+"'";
          ResultSet rs = stmt.executeQuery(sl);
          if(rs.next())
          {
         %>
            <input type="text" class="form-control" name="user" value="<%=rs.getString("username")%>" style="border-color: maroon" readonly>
            <% }
}catch(Exception e){
          out.println(e);
        } 

        %>
        
    </div>
    <div class="col-sm-8" style="padding-left: 650px">
        <table>
            <br><tr><td> <a href ='menu.jsp' class="btn btn-dark" style="width:80px;">Back</a></td>
                <td style="padding-left: 20px"><button type="submit" class="btn" style="color:white;background-color: black">Add Cart</button></td></tr>
        </table>
        
    </div>
        
        </form>
    </body>
</html>