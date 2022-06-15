package Dao;

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;
import Bean.foodListBean;

public class foodListDao {
     public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
     public static int saveFoodList(foodListBean fl){  
    int status=0;  
    try{  
        Connection con=foodListDao.getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into foodlist(name,stock,descrip,price,link) values(?,?,?,?,?)");  
        ps.setString(1,fl.getName());  
        ps.setString(2,fl.getStock()); 
        ps.setString(3,fl.getDescrip());  
        ps.setString(4,fl.getPrice());  
        ps.setString(5,fl.getLink());  
        status=ps.executeUpdate();
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    } 
    return status;  
}  
    public static List<foodListBean> getAllFoodListRecords(){  
    List<foodListBean> list=new ArrayList<foodListBean>();  
      
    try{  
        Connection con= foodListDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from foodlist");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            foodListBean fl=new foodListBean();  
            fl.setId(rs.getInt(1));  
            fl.setName(rs.getString(2));  
            fl.setStock(rs.getString(3));  
            fl.setDescrip(rs.getString(4));  
            fl.setPrice(rs.getString(5));  
            fl.setLink(rs.getString(6)); 
            list.add(fl);  
        }  
        con.close();
    }catch(Exception e){
        e.printStackTrace();
    }   
    return list;  
}  

    //get record by id
    public static foodListBean getFoodListRecordById(int id){  
    foodListBean fl= new foodListBean();  
    try{  
        Connection con= foodListDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from foodlist where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
              
            fl.setId(rs.getInt(1));  
            fl.setName(rs.getString(2));  
            fl.setStock(rs.getString(3)); 
            fl.setDescrip(rs.getString(4));  
            fl.setPrice(rs.getString(5));  
            fl.setLink(rs.getString(6));  


        } 
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    }    
    return fl;  
}  
    
      public static int updateFoodList(foodListBean fl){  
    int status=0;  
    try{  
        Connection con= foodListDao.getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update foodlist set name=?,stock=?,descrip=?,price=?,link=? where id=?");  
        ps.setString(1,fl.getName()); 
        ps.setString(2,fl.getStock());
        ps.setString(3,fl.getDescrip());  
        ps.setString(4,fl.getPrice());  
        ps.setString(5,fl.getLink());  
        ps.setInt(6,fl.getId());  
        status=ps.executeUpdate();
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    }  
    return status;  
}  
      
       public static int deleteFoodList(foodListBean fl){  
    int status=0;  
    try{  
        Connection con= foodListDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from foodlist where id=?");  
        ps.setInt(1,fl.getId());  
        status=ps.executeUpdate();  
        con.close();
    }catch(Exception i){
        System.out.println(i);
    } 
    return status;  
}  
    
}
