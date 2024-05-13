package com.example.webapp;

import entity.Users;

import java.sql.SQLException;

public interface LoginDAO {

    public boolean checkLoginStatement(String username, String password) throws SQLException;

}
