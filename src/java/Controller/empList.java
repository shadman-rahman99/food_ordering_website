package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.employeeBean;
import Dao.employeeDao;

public class empList extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        
        String name=request.getParameter("name"); 
        String gender=request.getParameter("gender"); 
        String ic=request.getParameter("ic"); 
        String nationality=request.getParameter("nationality");
        String address=request.getParameter("address"); 
        String hp=request.getParameter("hp"); 
        String position=request.getParameter("position");
        
        employeeBean e = new employeeBean();
        e.setName(name);
        e.setGender(gender);
        e.setIc(ic);
        e.setNationality(nationality);
        e.setAddress(address);
        e.setHp(hp);
        e.setPosition(position);
        
        int status = employeeDao.saveEmployee(e); 

        if(status>0){    
            request.getRequestDispatcher("addEmployeeSuccess.jsp").include(request, response);  
        }else{  
            request.getRequestDispatcher("addEmployeeError.jsp").include(request, response);  
        }  
          
        out.close();
                
        
        
        
        
    }



}
