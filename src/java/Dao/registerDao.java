package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Bean.user;
import mvc.util.DBConnection;

public class registerDao {
    public String registerUser(user Us){
    
         String u = Us.getName();
         String p = Us.getPassword();
         String h = Us.getHp();
         String e = Us.getEmail();
         
         Connection con = null;
         PreparedStatement preparedStatement = null;
         
          try
         {
             con = DBConnection.createConnection();
             String query = "insert into register(username,password,hp,email) values (?,?,?,?)"; //Insert user details into the table 'USERS'
             preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
             preparedStatement.setString(1, u);
             preparedStatement.setString(2, p);
             preparedStatement.setString(3, h);
             preparedStatement.setString(4, e);
             
             int i= preparedStatement.executeUpdate();
             
             if (i!=0) { //Just to ensure data has been inserted into the database
             return "SUCCESS"; 
         }}
         catch(SQLException s)
         {
            s.printStackTrace();
         }       
         return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
     
    } 
    
     public static int updateUser(user Us){
    
        int status=0;
         
         Connection con = null;
         //PreparedStatement preparedStatement = null;
         
          try
         {
        con = DBConnection.createConnection();
        PreparedStatement ps=con.prepareStatement("update register set username=?,password=?,hp=?,email=? where id=?");  
        ps.setString(1,Us.getName()); 
        ps.setString(2,Us.getPassword());
        ps.setString(3,Us.getHp());  
        ps.setString(4,Us.getEmail());  
        ps.setInt(5,Us.getId());  
        status=ps.executeUpdate();
        con.close();
         }catch(SQLException s)
         {
            s.printStackTrace();
         }       
          return status;
     
    } 
}
