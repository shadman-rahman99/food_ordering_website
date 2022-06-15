package Bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import mvc.util.DBConnection;

public class userloginBean {
  private String username;
private String pass; 

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

 public static boolean LoginUser(String username,String pass) 
    {
            boolean check =false;
            try 
            {      
                DBConnection conn=new DBConnection();
                Connection con= conn.createConnection();
                
                PreparedStatement ps1 =con.prepareStatement("select * from register where username=? and password=?");

                ps1.setString(1, username);
                ps1.setString(2, pass);
                ResultSet rs1 =ps1.executeQuery();
                check = rs1.next();

                con.close();        
            }catch(Exception e){e.printStackTrace();}
            
            return check;    
    }
}
