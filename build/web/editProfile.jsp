<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team06:ROMS-Edit Profile</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/newstyle.css">
        <%@include file="header.html" %>
    </head>
    <body>
        <h1 style="padding-top: 30px;padding-left: 20px">Edit My Profile</h1>
        <%
            Connection conn = null;
            String host = "jdbc:mysql://localhost:3306/roms";
            Statement st = null;
            ResultSet rs = null;
            PreparedStatement ps = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(host, "root","");
        %>
        <form action="editProfile" method="post">
            <%
                st = conn.createStatement();
                String u = request.getParameter("u");
                int num = Integer.parseInt(u);
                String data = "select * from register where id='"+num+"'";
                rs = st.executeQuery(data);
                while(rs.next()){
            %>
            <input type="hidden" name="id" value="<%=rs.getString("id")%>">
    <div class="col-sm-8" style="padding-top:30px;padding-left: 70px">
       
       <label for="ex2">Username</label>
       <input type="text" class="form-control" name="name" value="<%=rs.getString("username")%>">
                                        
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Password</label>
        <input class="form-control" style="border-color: maroon" id="pass" 
        type="password" name="password" value="<%=rs.getString("password")%>">
    </div>
    
    <div class="col-sm-8" style="padding-left: 70px">
       
    <label for="ex2">Contact Number</label>
    <input class="form-control" style="border-color: maroon;" id="hp" 
    type="text" name="hp" value="<%=rs.getString("hp")%>">
    </div>
                                    
    <div class="col-sm-8" style="padding-left: 70px">
       
        <label for="ex2">Email</label>
        <input class="form-control" style="border-color: maroon" id="email" 
        type="email" name="email" value="<%=rs.getString("email")%>">
    </div>
    <%
       } 
    %>
    <div class="col-sm-8" style="padding-left: 650px">
        <table>
            <br><tr><td> <a href ='profile.jsp' class="btn btn-dark" style="width:80px;">Back</a></td>
                <td style="padding-left: 20px"><button type="submit" class="btn" style="color:white;background-color: black">Update</button></td></tr>
        </table>
        
    </div>
        
        </form>
    
    </body>
</html>
