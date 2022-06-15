package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.foodListBean;
import Dao.foodListDao;

public class foodList extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        
        String name=request.getParameter("name"); 
        String stock=request.getParameter("stock"); 
        String descrip=request.getParameter("descrip"); 
        String price=request.getParameter("price");
        double p = Double.parseDouble(price);
        String q = String.format("%.2f", p);
        String link=request.getParameter("link"); 
        
        foodListBean fl = new foodListBean();
        
        fl.setName(name);
        fl.setStock(stock);
        fl.setDescrip(descrip);
        fl.setPrice(q);
        fl.setLink(link);
        
        int status = foodListDao.saveFoodList(fl); 

        if(status>0){    
            request.getRequestDispatcher("addFoodListSuccess.jsp").include(request, response);  
        }else{  
            request.getRequestDispatcher("addFoodListError.jsp").include(request, response);  
        }  
          
        out.close(); 
        
    }

}
