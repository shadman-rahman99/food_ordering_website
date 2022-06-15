<!DOCTYPE html>  
<html>  
<head>   
</head>  
<body> 
<%@page import="Bean.adminLoginBean"%>  
  
 
<%  
adminLoginBean a=(adminLoginBean)request.getAttribute("a");  
out.print("<h3>Welcome Back, "+a.getUsername()+"^.^</h3>");  
%>  
<jsp:include page="adminHomepage.jsp"></jsp:include> 

</body>  
</html>
