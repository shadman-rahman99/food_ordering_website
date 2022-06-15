package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.cartDao;
import Bean.cartBean;

public class editCart extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        
        String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid);
        String username=request.getParameter("username");
        String name=request.getParameter("name");  
        String p=request.getParameter("price");  
        double e = Double.parseDouble(p);
        String q=request.getParameter("quantity"); 
        int quantity = Integer.parseInt(q);
        double tp = e * quantity;
        String price = String.format("%.2f", e);
        String tprice = String.format("%.2f", tp);
        
        cartBean c = new cartBean();
        
        c.setId(id);
        c.setUsername(username);
        c.setName(name);
        c.setPrice(price);
        c.setQuantity(quantity);
        c.setTprice(tprice);
        
        int status = cartDao.updateCart(c);
        
        if(status>0){    
            request.getRequestDispatcher("editCartSuccess.jsp").include(request, response);  
        }else{  
            request.getRequestDispatcher("editCartError.jsp").include(request, response);  
        }  
          
        out.close();
    }
        
   


}
