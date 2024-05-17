<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Login success</h1>

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


</body>
</html>
