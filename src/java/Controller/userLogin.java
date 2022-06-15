/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Bean.userloginBean;

/**
 *
 * @author User
 */
public class userLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            try 
            {
                userloginBean user = new userloginBean();

                user.setUsername(request.getParameter("username"));
                user.setPass(request.getParameter("pass"));

                if(userloginBean.LoginUser(request.getParameter("username"),request.getParameter("pass")))
                {
                    userloginBean us = new userloginBean();
                    us.setUsername(String.valueOf(request.getParameter("username")));
                    us.getUsername();
                    
                    

                    HttpSession sessionUser = request.getSession();
                    sessionUser.setAttribute("user",us.getUsername());

                    RequestDispatcher rd1 = request.getRequestDispatcher("profile.jsp");
                    rd1.forward(request,response);
                    
                }  
                else
                {
                    RequestDispatcher rd=request.getRequestDispatcher("LoginError.jsp");  
                    rd.forward(request, response);
                }    
            } finally {out.close();}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
