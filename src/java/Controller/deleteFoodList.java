package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.foodListBean;
import Dao.foodListDao;


public class deleteFoodList extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid); 
        
        foodListBean fl = new foodListBean();
        fl.setId(id);
        
       int status= foodListDao.deleteFoodList(fl);  
        if(status>0){  
            response.sendRedirect("deleteFoodListSuccess.jsp");  
        }else{  
             response.sendRedirect("deleteFoodListError.jsp");  
        }   
       
      
    }

   
}
