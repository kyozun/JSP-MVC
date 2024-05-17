package com.example.webapp;

import java.sql.SQLException;

public interface LoginDAO {

    boolean checkLogin(String username, String password) throws SQLException;

}
