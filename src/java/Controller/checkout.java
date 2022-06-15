package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.ckeckoutBean;
import Dao.checkoutDao;

public class checkout extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        
        String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid);
        String username=request.getParameter("username");
        String orderStatus=request.getParameter("orderStatus");
        String name=request.getParameter("name"); 
        String p=request.getParameter("price");
        double pri = Double.parseDouble(p);
        String price = String.format("%.2f", pri);
        String q=request.getParameter("quantity");  
        int quantity=Integer.parseInt(q);
        String i=request.getParameter("tprice");
        double ip = Double.parseDouble(i);
        String tprice = String.format("%.2f", ip);
        String date=request.getParameter("date");
        
        ckeckoutBean ch = new ckeckoutBean();
        
        ch.setId(id);
        ch.setUsername(username);
        ch.setOrderStatus(orderStatus);
        ch.setName(name);
        ch.setPrice(price);
        ch.setQuantity(quantity);
        ch.setTprice(tprice);
        ch.setDate(date);
        
        int status = checkoutDao.checkout(ch); 

        if(status>0){    
            request.getRequestDispatcher("checkoutSuccess.jsp").include(request, response);  
        }else{  
            request.getRequestDispatcher("checkoutError.jsp").include(request, response);  
        }  
          
        out.close(); 
        
       
    }


}
