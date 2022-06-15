package Dao;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;
import Bean.cartBean;
public class cartDao {
    
    public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
     public static int saveCart(cartBean c){  
    int status=0;  
    try{  
        Connection con=cartDao.getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into cart(username,name,price,quantity,tprice) values(?,?,?,?,?)");  
        ps.setString(1,c.getUsername());  
        ps.setString(2,c.getName()); 
        ps.setString(3,c.getPrice());  
        ps.setInt(4,c.getQuantity());  
        ps.setString(5,c.getTprice());  
        status=ps.executeUpdate();
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    } 
    return status;  
}  
     
   public static cartBean getCartRecordById(int id){  
    cartBean c= new cartBean();  
    try{  
        Connection con= cartDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from cart where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
              
            c.setId(rs.getInt(1));  
            c.setUsername(rs.getString(2));  
            c.setName(rs.getString(3)); 
            c.setPrice(rs.getString(4));  
            c.setQuantity(rs.getInt(5)); 
            c.setTprice(rs.getString(6));
        } 
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    }    
    return c;  
}  
        public static int updateCart(cartBean c){  
    int status=0;  
    try{  
        Connection con= cartDao.getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update cart set username=?,name=?,price=?,quantity=?,tprice=? where id=?");  
        ps.setString(1,c.getUsername()); 
        ps.setString(2,c.getName());
        ps.setString(3,c.getPrice());  
        ps.setInt(4,c.getQuantity());  
        ps.setString(5,c.getTprice());  
        ps.setInt(6,c.getId());  
        status=ps.executeUpdate();
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    }  
    return status;  
}  
    
public static int deleteCart(cartBean c){  
    int status=0;  
    try{  
        Connection con= cartDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from cart where id=?");  
        ps.setInt(1,c.getId());  
        status=ps.executeUpdate();  
        con.close();
    }catch(Exception i){
        System.out.println(i);
    } 
    return status;  
}  
    
}
