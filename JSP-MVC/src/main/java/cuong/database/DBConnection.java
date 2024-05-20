package cuong.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static Connection connection;

    public static Connection getConnection() {
        try {
            /*1. Load the driver class for connection*/
            Class.forName("com.mysql.cj.jdbc.Driver");
            /*2. Create a connection*/
            connection = DriverManager.getConnection("jdbc:mysql://app-db:3306/cuong", "root", "pizza");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
