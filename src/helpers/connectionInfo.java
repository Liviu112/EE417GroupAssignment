package helpers;
import java.sql.Connection;
import java.sql.DriverManager;

public class connectionInfo {
	public static Connection connectToDB() {
        //Information for db
        Connection con = null;
        String JDBCUrl = "jdbc:mysql://localhost:3306/TheGardenCenterDataBase";
        String username = "root";
        String password = "Wenxin123";

        //Connect to DB
        try {
            System.out.println("Connecting to database...");
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(JDBCUrl, username, password);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            System.out.println("Connection Failed.");
            e.printStackTrace();
            System.exit(0);
        }

        //Return connection object
        return con;
    }
}
