package Controller;

import Bean.foodListBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.foodListDao;


public class editFoodList extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        
        String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid);
        String name=request.getParameter("name"); 
        String stock=request.getParameter("stock"); 
        String descrip=request.getParameter("descrip"); 
        String price=request.getParameter("price");
        double p = Double.parseDouble(price);
        String q = String.format("%.2f", p);
        String link=request.getParameter("link"); 
        
        foodListBean fl = new foodListBean();
        
        fl.setId(id);
        fl.setName(name);
        fl.setStock(stock);
        fl.setDescrip(descrip);
        fl.setPrice(q);
        fl.setLink(link);
        
        int status = foodListDao.updateFoodList(fl); 

        if(status>0){    
            request.getRequestDispatcher("updateFoodListSuccess.jsp").include(request, response);  
        }else{  
            request.getRequestDispatcher("updateFoodListError.jsp").include(request, response);  
        }  
          
        out.close(); 
     
    }


}
