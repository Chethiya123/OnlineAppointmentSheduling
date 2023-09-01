/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessTire;
import java.sql.*;
import BusinessTire.userBusinessTire;

public class userDbTire {
    
     static Connection currentConnection = null;
    static ResultSet rs = null;
    static PreparedStatement preparedStatement = null;
    static PreparedStatement preparedStatement1 = null;
    
    public static userBusinessTire login(userBusinessTire bean){
        Statement statement=null;   
        String userName=bean.getUsername();
        String userPassword=bean.getPassword();
        String searchQuery="select * from users where userName='"+userName+"' AND password='"+userPassword+"'";
        System.out.println("before getting connection your given user name is"+userName);
        System.out.println("before getting connection your given user password is"+userPassword);
        System.out.println("your searchQuery is"+searchQuery);
        try{
            currentConnection=DBConnection.connect();
            statement=(Statement) currentConnection.createStatement();
            rs=statement.executeQuery(searchQuery);
            boolean more=rs.next();
            if(!more){
                System.out.println("Not a Registered user");
                bean.setValid(false);;
            }
            else if(more){
                String role=rs.getString("role");
                System.out.println("Welcome "+role+"");               
                bean.setRole(role);
                bean.setValid(true);
            }
           
        }
        catch(Exception ex){
            System.out.println("login failed"+ex);
            }
        finally{
            if(rs!=null){
                try{
                    rs.close();
                    }
                catch(Exception e){}                  
                rs=null;
            }
            if(statement!=null){
                try{
                    statement.close();
                }
                catch(Exception e){}
                statement=null;
            }
            if(currentConnection!=null){
                try{
                    currentConnection.close();
                }
                catch(Exception e){}
                currentConnection=null;
            }
        }
        return bean;
    }
}
