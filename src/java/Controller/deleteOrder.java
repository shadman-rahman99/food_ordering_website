package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.ckeckoutBean;
import Dao.checkoutDao;


public class deleteOrder extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid); 
        
        ckeckoutBean ch = new ckeckoutBean();
        ch.setId(id);
        
       int status= checkoutDao.deleteOrder(ch);  
        if(status>0){  
            response.sendRedirect("deleteOrderSuccess.jsp");  
        }else{  
             response.sendRedirect("deleteOrderError.jsp");  
        }   
       
       
    }


}
