package Dao;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;
import Bean.employeeBean;

public class employeeDao {
    
 public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/roms","root","");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
 
public static int saveEmployee(employeeBean e){  
    int status=0;  
    try{  
        Connection con=employeeDao.getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into emplist(name,gender,ic,nationality,address,hp,position) values(?,?,?,?,?,?,?)");  
        ps.setString(1,e.getName());  
        ps.setString(2,e.getGender()); 
        ps.setString(3,e.getIc());  
        ps.setString(4,e.getNationality());  
        ps.setString(5,e.getAddress());  
        ps.setString(6,e.getHp());
        ps.setString(7,e.getPosition());
        status=ps.executeUpdate();
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    } 
    return status;  
}  

public static List<employeeBean> getAllEmployeeRecords(){  
    List<employeeBean> list=new ArrayList<employeeBean>();  
      
    try{  
        Connection con= employeeDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from emplist");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            employeeBean e=new employeeBean();  
            e.setId(rs.getInt(1));  
            e.setName(rs.getString(2));  
            e.setGender(rs.getString(3));  
            e.setIc(rs.getString(4));  
            e.setNationality(rs.getString(5));  
            e.setAddress(rs.getString(6)); 
            e.setHp(rs.getString(7)); 
            e.setPosition(rs.getString(8)); 
            
            list.add(e);  
        }  
        con.close();
    }catch(Exception e){
        e.printStackTrace();
    }   
    return list;  
}  

 public static employeeBean getEmployeeRecordById(int id){  
    employeeBean e= new employeeBean();  
    try{  
        Connection con= employeeDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from emplist where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
              
            e.setId(rs.getInt(1));  
            e.setName(rs.getString(2));  
            e.setGender(rs.getString(3)); 
            e.setIc(rs.getString(4));  
            e.setNationality(rs.getString(5));  
            e.setAddress(rs.getString(6));  
            e.setHp(rs.getString(7));
            e.setPosition(rs.getString(8));

        } 
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    }    
    return e;  
}  
 
public static int updateEmployeeList(employeeBean e){  
    int status=0;  
    try{  
        Connection con= employeeDao.getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update emplist set name=?,gender=?,ic=?,nationality=?,address=?,hp=?,position=? where id=?");  
        ps.setString(1,e.getName()); 
        ps.setString(2,e.getGender());
        ps.setString(3,e.getIc());  
        ps.setString(4,e.getNationality());  
        ps.setString(5,e.getAddress());  
        ps.setString(6,e.getHp());  
        ps.setString(7,e.getPosition()); 
        ps.setInt(8,e.getId()); 
        status=ps.executeUpdate();
        con.close();
    }catch(Exception ex){
        ex.printStackTrace();
    }  
    return status;  
}  

public static int deleteEmployeeList(employeeBean e){  
    int status=0;  
    try{  
        Connection con= employeeDao.getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from emplist where id=?");  
        ps.setInt(1,e.getId());  
        status=ps.executeUpdate();  
        con.close();
    }catch(Exception i){
        System.out.println(i);
    } 
    return status;  
}  
    
}
