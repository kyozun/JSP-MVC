package com.example.webapp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginBean implements LoginDAO {
    Connection connection;

    {
        try {
            connection = MySQLConnectionDB.getMySQLConnection();
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    public boolean checkLogin(String username, String password) throws SQLException {
        //Dung prepare statement
        String sql = "select * from users.users where username=? and password=?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        return rs.next();
    }


}
