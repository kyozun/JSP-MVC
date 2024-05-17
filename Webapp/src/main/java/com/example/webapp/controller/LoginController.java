package com.example.webapp.controller;

import com.example.webapp.model.LoginBean;
import entity.Users;

import java.sql.SQLException;

public class LoginController {

    //Step 2. Instance of Model
    LoginBean login = new LoginBean();

    public boolean loginPreparedStatement(Users user) throws SQLException {

        //Step 3: Return to View
        return login.checkLogin(user.getUserName(), user.getPassword());


    }
}
