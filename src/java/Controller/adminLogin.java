package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.adminLoginBean;
import javax.servlet.RequestDispatcher;

public class adminLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           response.setContentType("text/html");  
           PrintWriter out=response.getWriter();
           
           String username=request.getParameter("username");  
           String password=request.getParameter("password");
           
           adminLoginBean al = new adminLoginBean();
           
           al.setUsername(username);
           al.setPassword(password);
           request.setAttribute("a",al);  
          
        boolean status = al.validate(); 
        
         if(status){  
            RequestDispatcher rd=request.getRequestDispatcher("adminLoginSuccess.jsp");  
            rd.forward(request, response);  
        }  
        else{  
            RequestDispatcher rd=request.getRequestDispatcher("adminLoginError.jsp");  
            rd.forward(request, response);  
        }  
          
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
