<%@ page import="com.example.webapp.LoginBean" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Login Controller</title>
</head>
<body>
<%
    //Step1: Call Controller
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    //Step2: Call instance of JavaBean(Model)
    LoginBean loginBean = new LoginBean();
    boolean status;
    try {
        status = loginBean.checkLogin(username, password);
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
    if (status) {
%>

<jsp:forward page="success.jsp"></jsp:forward>

<%
} else {
%>

<jsp:forward page="failure.jsp"></jsp:forward>

<%
    }%>
</body>
</html>

<%%>

