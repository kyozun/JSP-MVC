<%--
  Created by IntelliJ IDEA.
  User: Dvds
  Date: 5/20/2024
  Time: 8:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark">
            <div>
                <a href="" class="navbar-brand">User Management App</a>
            </div>

            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
            </ul>
        </nav>
    </header>

    <br>

    <div class="row">
        <div class="container">
            <h3 class="text-center">List of Users</h3>
            <hr>
            <div class="container text-left">
                <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New User</a>
            </div>

            <br>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Country</th>
                    <th>Actions</th>
                </tr>
                </thead>

                <tbody>
                    <c:forEach var="user" items="${listUser}">
                        <tr>
                            <td>
                                <c:out value="${user.id}"/>
                            </td>

                            <td>
                                <c:out value="${user.name}"/>
                            </td>

                            <td>
                                <c:out value="${user.email}"/>
                            </td>

                            <td>
                                <c:out value="${user.country}"/>
                            </td>

                            <td>
                                <a href="edit?id=<c:out value='${user.id}'/>">Edit</a>
                                <a href="delete?id=<c:out value='${user.id}'/>">Delete</a>
                            </td>
                        </tr>

                    </c:forEach>
                </tbody>
            </table>

        </div>

    </div>
</body>
</html>
