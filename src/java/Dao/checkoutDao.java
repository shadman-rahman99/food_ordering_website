package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import Bean.ckeckoutBean;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class checkoutDao {
    
    public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
     public static int checkout(ckeckoutBean ch){  
    int status=0;  
    try{  
        Connection con=checkoutDao.getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into checkout(username,name,price,quantity,tprice,orderStatus,date) values(?,?,?,?,?,?,?)");  
        ps.setString(1,ch.getUsername()); 
        ps.setString(2,ch.getName());  
        ps.setString(3,ch.getPrice()); 
        ps.setInt(4,ch.getQuantity());  
        ps.setString(5,ch.getTprice());  
        ps.setString(6,ch.getOrderStatus());
        ps.setString(7,ch.getDate());
        status=ps.executeUpdate();
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    } 
    return status;  
}  
     
public static List<ckeckoutBean> getAllOrderRecords(){  
    List<ckeckoutBean> list=new ArrayList<ckeckoutBean>();  
      
    try{  
        Connection con= checkoutDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from checkout");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            ckeckoutBean ch=new ckeckoutBean();  
            ch.setId(rs.getInt(1));  
            ch.setUsername(rs.getString(2));  
            ch.setName(rs.getString(3));  
            ch.setPrice(rs.getString(4));  
            ch.setQuantity(rs.getInt(5));  
            ch.setTprice(rs.getString(6)); 
            ch.setOrderStatus(rs.getString(7));
            ch.setDate(rs.getString(8));
            list.add(ch);  
        }  
        con.close();
    }catch(Exception e){
        e.printStackTrace();
    }   
    return list;  
}  

  public static ckeckoutBean getOrderById(int id){  
    ckeckoutBean ch= new ckeckoutBean();  
    try{  
        Connection con= checkoutDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from checkout where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
              
            ch.setId(rs.getInt(1));  
            ch.setUsername(rs.getString(2));  
            ch.setName(rs.getString(3)); 
            ch.setPrice(rs.getString(4));  
            ch.setQuantity(rs.getInt(5));  
            ch.setTprice(rs.getString(6));
            ch.setOrderStatus(rs.getString(7)); 
            ch.setDate(rs.getString(8));


        } 
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    }    
    return ch;  
}  
 public static int updateOrder(ckeckoutBean ch){  
    int status=0;  
    try{  
        Connection con= checkoutDao.getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update checkout set username=?,name=?,price=?,quantity=?,tprice=?,orderStatus=?,date=? where id=?");  
        ps.setString(1,ch.getUsername()); 
        ps.setString(2,ch.getName());
        ps.setString(3,ch.getPrice());  
        ps.setInt(4,ch.getQuantity());  
        ps.setString(5,ch.getTprice());  
        ps.setString(6,ch.getOrderStatus());
        ps.setString(7,ch.getDate());
        ps.setInt(8,ch.getId());  
        status=ps.executeUpdate();
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    }  
    return status;  
}  
 
public static int deleteOrder(ckeckoutBean ch){  
    int status=0;  
    try{  
        Connection con= checkoutDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from checkout where id=?");  
        ps.setInt(1,ch.getId());  
        status=ps.executeUpdate();  
        con.close();
    }catch(Exception i){
        System.out.println(i);
    } 
    return status;  
}  
     
}
