package com.example.webapp;

import java.sql.*;

public class LoginBean implements LoginDAO {
//

    private Statement statement = null;
    Connection connection;

    {
        try {
            connection = MySQLConnectionDB.getMySQLConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    public boolean checkLoginStatement(String username, String password) throws SQLException {

//        //Query
//        String query = "select * from users where username = username and password = password";
//
//        //Tạo statement mỗi lần thực thi
//        statement = connection.createStatement();
//
//        System.out.println(statement);
//
//        //Tạo đối tượng ResultSet để nhận kết quả từ database trả về
//        ResultSet resultSet = statement.executeQuery(query);
//
//        if (!resultSet.isBeforeFirst()) {
//            return false;
//        }

        return true;
    }


}
