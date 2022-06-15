
package Dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List; 
import Bean.foodReviewBean;

public class foodReviewDao {
    
    public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;
}  
     public static int saveFoodReview(foodReviewBean fr){  
    int status=0;  
    try{  
        Connection con=foodReviewDao.getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into foodReview(name,comments,rate,date) values(?,?,?,?)");  
        ps.setString(1,fr.getName());  
        ps.setString(2,fr.getComment()); 
        ps.setString(3,fr.getRate());  
        ps.setString(4,fr.getDate());  
        status=ps.executeUpdate();
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    } 
    return status;  
}  
    
     public static List<foodReviewBean> getAllReviewRecords(){  
    List<foodReviewBean> list=new ArrayList<foodReviewBean>();  
      
    try{  
        Connection con= foodReviewDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from foodreview");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            foodReviewBean fr=new foodReviewBean();  
            fr.setId(rs.getInt(1));  
            fr.setName(rs.getString(2));  
            fr.setComment(rs.getString(3));  
            fr.setRate(rs.getString(4));  
            fr.setDate(rs.getString(5));  

            list.add(fr);  
        }  
        con.close();
    }catch(Exception e){
        e.printStackTrace();
    }   
    return list;  
}  
}
