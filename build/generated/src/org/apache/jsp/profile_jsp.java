package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import Bean.userloginBean;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.html");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Team06:ROMS-User Profile</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap-grid.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap-reboot.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Team 06:ROMS-Header</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap-grid.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap-reboot.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light\" style=\"background-color: #010101\">\r\n");
      out.write("  <a class=\"navbar-brand\" href=\"homepage.html\">\r\n");
      out.write("      <img src=\"img/header.png\" width=\"220\" height=\"50\" class=\"d-inline-block align-top\" >\r\n");
      out.write("      </a>\r\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("  </button>\r\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\r\n");
      out.write("    <ul class=\"navbar-nav\">\r\n");
      out.write("      <li class=\"nav-item active\">\r\n");
      out.write("        <a class=\"nav-link\" href=\"#\" style=\"color:white;\">Home</a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"nav-item\">\r\n");
      out.write("        <a class=\"nav-link\" href=\"profile.jsp\" style=\"color:white;\">Profile</a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"nav-item\">\r\n");
      out.write("        <a class=\"nav-link\" href=\"catalog.html\" style=\"color:white;\">Menu</a>\r\n");
      out.write("      </li>\r\n");
      out.write("\r\n");
      out.write("      <li class=\"nav-item\">\r\n");
      out.write("        <a class=\"nav-link\" href=\"cart.html\" style=\"color:white;\">Cart</a>\r\n");
      out.write("      </li>\r\n");
      out.write("\r\n");
      out.write("      <li class=\"nav-item\">\r\n");
      out.write("        <a class=\"nav-link\" href=\"foodReview.jsp\" style=\"color:white;\">FoodReview</a>\r\n");
      out.write("      </li>\r\n");
      out.write("    </ul>\r\n");
      out.write("      \r\n");
      out.write("      <ul class=\"nav navbar-nav\" style=\"padding-left: 600px\">\r\n");
      out.write("        <li><a href=\"login.html\" style=\"color:white;\"><img border=\"0\" alt=\"login\" src=\"img/logout.png\" width=\"30\" height=\"25\"> Logout</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("  </div>\r\n");
      out.write("            \r\n");
      out.write("</nav>\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h2 style=\"padding-top:10px;padding-left:20px\"> My Profile</h2> \n");
      out.write("        <table>\n");
      out.write("        ");

        try
        {
          Connection conn;
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");
          Statement stmt = conn.createStatement();
          String us = (String)session.getAttribute("user");
          String sl = "select * from register where username='"+us+"'";
          ResultSet rs = stmt.executeQuery(sl);
          if(rs.next())
          {
          
      out.write("\n");
      out.write("          \n");
      out.write("          <tr><td style=\"padding-left: 180px\">Username:</td><td style=\"padding-left: 60px\">");
out.println(rs.getString(2));
      out.write("</td></tr>\n");
      out.write("          <tr><td style=\"padding-left: 180px\">Password:</td><td style=\"padding-left: 60px\">");
out.println(rs.getString(3));
      out.write("</td></tr>\n");
      out.write("          <tr><td style=\"padding-left: 180px\">HP:</td><td style=\"padding-left: 60px\">");
out.println(rs.getString(4));
      out.write("</td></tr>\n");
      out.write("          <tr><td style=\"padding-left: 180px\">Email:</td><td style=\"padding-left: 60px\">");
out.println(rs.getString(5));
      out.write("</td></tr>\n");
      out.write("          <tr><td></td></tr><br>\n");
      out.write("          <td></td><br><td style=\"padding-left: 230px;padding-top: 35px\"><a href='editProfile.jsp?u=");
      out.print(rs.getString(1));
      out.write("' style=\"color:white\" class=\"btn btn-dark\">Edit</a></td>\n");
      out.write("          ");
 }
        
          }

         catch(Exception e){
          out.println(e);
        } 

        
      out.write("\n");
      out.write(" \n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
