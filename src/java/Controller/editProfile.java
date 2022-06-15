
package Controller;

import Bean.user;
import Dao.registerDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class editProfile extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        
        String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid); 
        String name=request.getParameter("name");  
        String password=request.getParameter("password");  
        String hp=request.getParameter("hp");  
        String email=request.getParameter("email"); 
        
         user U = new user();
        //Using Java Beans - An easiest way to play with group of related data
         U.setId(id);
         U.setName(name);
         U.setPassword(password);
         U.setHp(hp);
         U.setEmail(email);
         
        int status= registerDao.updateUser(U);  
        if(status>0){  
            HttpSession sessionUser = request.getSession();
            sessionUser.setAttribute("user",U.getName());
            response.sendRedirect("profile.jsp");  
        }else{  
             response.sendRedirect("updateProfileError.jsp");  
        }  
          
        out.close(); 
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
