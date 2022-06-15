
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.user;
import Dao.registerDao;

public class register extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
         String u = request.getParameter("name");
         String p = request.getParameter("password");
         String h = request.getParameter("hp");
         String e = request.getParameter("email");
         
         user U = new user();
        //Using Java Beans - An easiest way to play with group of related data
         U.setName(u);
         U.setPassword(p);
         U.setHp(h);
         U.setEmail(e); 
         
         registerDao R = new registerDao();
         
         String userRegistered = R.registerUser(U);
         
         if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
         {
            request.getRequestDispatcher("registerSuccess.jsp").forward(request, response);
         }
         else   //On Failure, display a meaningful message to the User.
         {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("register.jsp").forward(request, response);
         }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
