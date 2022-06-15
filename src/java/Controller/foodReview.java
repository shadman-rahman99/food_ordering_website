package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.foodReviewBean;
import Dao.foodReviewDao;


public class foodReview extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        PrintWriter out=response.getWriter(); 
        
        String name=request.getParameter("name");  
        String comment=request.getParameter("comment");  
        String rate=request.getParameter("rate"); 
        String date=request.getParameter("date");
        //double erate = Double.parseDouble(irate);
        //String rate =String.format("%.2f",erate);
        //SimpleDateFormat d = new SimpleDateFormat();
        //Date r = new Date();
        //String date = d.format(r);
        
        foodReviewBean fr = new foodReviewBean();
        
        fr.setName(name);
        fr.setComment(comment);
        fr.setRate(rate);
        fr.setDate(date);
        
        int status= foodReviewDao.saveFoodReview(fr);  
        if(status>0){    
            request.getRequestDispatcher("addFoodReviewSuccess.jsp").include(request, response);  
        }else{  
            request.getRequestDispatcher("addFoodReviewError.jsp").include(request, response);  
        }  
          
        out.close();
        
        
    }



}
