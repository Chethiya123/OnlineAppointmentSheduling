
package DataAccessTire;

import java.sql.*;

public class DBConnection {
    
     public static Connection connect(){
         try{
                Class.forName("com.mysql.jdbc.Driver");
				String dbUrl = "jdbc:mysql://localhost/appointment?";
				String username = "root";
				String password = "";
				Connection connection = DriverManager.getConnection(dbUrl,username,password);
                return connection;
         }
         catch(Exception ex){
             return null;
         }
    }
}
