package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.cartBean;
import Dao.cartDao;

public class deleteCart extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid); 
        
        cartBean c = new cartBean();
        c.setId(id);
        
         int status= cartDao.deleteCart(c);  
        if(status>0){  
            response.sendRedirect("deleteCartSuccess.jsp");  
        }else{  
             response.sendRedirect("deleteCartError.jsp");  
        }   
       
    }

}