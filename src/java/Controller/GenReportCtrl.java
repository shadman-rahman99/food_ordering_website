package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.GenReport;

public class GenReportCtrl extends HttpServlet {
    public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
   }
    
        public static String getGrossProfit(){
     
        double grossProfit= 0.0;
       try{
           
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
    LocalDateTime now = LocalDateTime.now(); 
    String year = dtf.format(now).substring(0, 4);
    String month = dtf.format(now).substring(5, 7);
    String firstDate = year+"-"+month+"-01 00:00:00";
    String lastDate = year+"-"+month+"-31 23:59:59";
        
    Timestamp Fts = Timestamp.valueOf(firstDate) ;
    Timestamp Lts = Timestamp.valueOf(lastDate) ;   
        
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from checkout WHERE orderStatus = 'Accepted' AND date BETWEEN ? AND ?");  
        ps.setTimestamp(1, Fts);
        ps.setTimestamp(2, Lts);
        ResultSet rs=ps.executeQuery();
        
        
        while(rs.next()){
            grossProfit += (rs.getDouble("tprice") * rs.getInt("quantity"));
        }
    
       }catch(Exception i){System.out.println(i);} 
      
        String strDouble = String.format("%.2f", grossProfit);
       return strDouble; 
    } 
        
public static String getTotalCost(){
     
    double TotalCost= 0.0;
       try{
        
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
    LocalDateTime now = LocalDateTime.now(); 
    String year = dtf.format(now).substring(0, 4);
    String month = dtf.format(now).substring(5, 7);
    String firstDate = year+"-"+month+"-01 00:00:00";
    String lastDate = year+"-"+month+"-31 23:59:59";
        
    Timestamp Fts = Timestamp.valueOf(firstDate) ;
    Timestamp Lts = Timestamp.valueOf(lastDate) ;   
           
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from checkout WHERE orderStatus = 'Accepted' AND date BETWEEN ? AND ?");  
        ps.setTimestamp(1, Fts);
        ps.setTimestamp(2, Lts);
        ResultSet rs=ps.executeQuery();
        
        
        while(rs.next()){
            TotalCost += (rs.getDouble("price") * rs.getInt("quantity"));
        }
    
       }catch(Exception i){System.out.println(i);} 
      
        String strDouble = String.format("%.2f", TotalCost);
       return strDouble; 
    }
            public static String getNetProfit(){
           
           double Tcost = Double.parseDouble(getTotalCost());
           double Gprofit = Double.parseDouble(getGrossProfit());
           
           double NetProfit = Gprofit-Tcost;
           
        String strDouble = String.format("%.2f", NetProfit);
        return strDouble;
       }
       
  public static List<GenReport> getAllRecords(){  
    List<GenReport> list=new ArrayList<GenReport>(); 
    
    
    try{  
        
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
    LocalDateTime now = LocalDateTime.now(); 
    String year = dtf.format(now).substring(0, 4);
    String month = dtf.format(now).substring(5, 7);
    String firstDate = year+"-"+month+"-01 00:00:00";
    String lastDate = year+"-"+month+"-31 23:59:59";
        
    Timestamp Fts = Timestamp.valueOf(firstDate) ;
    Timestamp Lts = Timestamp.valueOf(lastDate) ;
    
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from checkout WHERE date BETWEEN ? AND ?"); 
        ps.setTimestamp(1, Fts);
        ps.setTimestamp(2, Lts);
        ResultSet rs=ps.executeQuery(); 
        
        while(rs.next()){  
            GenReport r=new GenReport();  
            r.setId(rs.getInt("id"));
            r.setDate(rs.getString("date"));
            r.setName(rs.getString("name"));
            r.setQuantity(rs.getInt("quantity"));
            r.setOrderStatus(rs.getString("orderStatus"));
            r.setPrice(rs.getDouble("price"));
            r.setTprice(rs.getDouble("tprice"));
           
            list.add(r);  
        }  
    }catch(Exception i){System.out.println(i);}  
    return list;  
}        
      
}
