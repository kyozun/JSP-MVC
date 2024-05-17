package com.example.webapp.model;

import java.sql.SQLException;

public interface LoginDAO {

    boolean checkLogin(String username, String password) throws SQLException;

}
