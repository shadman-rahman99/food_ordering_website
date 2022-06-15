package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.employeeBean;
import Dao.employeeDao;

public class deleteEmployee extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid); 
        
        employeeBean e = new employeeBean();
        e.setId(id);
        
         int status= employeeDao.deleteEmployeeList(e);  
        if(status>0){  
            response.sendRedirect("deleteEmployeeSuccess.jsp");  
        }else{  
             response.sendRedirect("deleteEmployeeError.jsp");  
        }   
        
    }

 

}
