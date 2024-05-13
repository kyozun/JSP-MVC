package com.example.webapp;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnectionDB {

    public static Connection getMySQLConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = null;
        //Connection string: Chuoi ket noi den csdl
        String connectionURL = "jdbc:mysql://localhost:3306";
        connection = DriverManager.getConnection(connectionURL, "root", "pizza");

        return connection;
    }


    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        if (getMySQLConnection() != null) {
            System.out.println("Ket noi thanh thong");
        }
    }

}