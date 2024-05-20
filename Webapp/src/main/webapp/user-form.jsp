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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="">
        <div>
            <a href="">User Management App</a>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
        </ul>
    </nav>
</header>

<br>

<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <c:if test="${user != null}">
            <form action="update" method="post">

                </c:if>
                <c:if test="${user == null}">
                <form action="insert" method="post">
                    </c:if>

                    <caption>
                        <h2>
                            <c:if test="${user != null}">Edit User</c:if>
                            <c:if test="${user == null}">Add User</c:if>
                        </h2>
                    </caption>

                    <c:if test="${user != null}">
                        <input type="hidden" name="id" value="<c:out value="${user.id}"/>"/>
                    </c:if>


                    <fieldset class="form-group">
                        <label>User Name</label>
                        <input type="text" class="from-control" name="name" required="required" value="<c:out
                           value='${user.name}' />">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>User Email</label>
                        <input type="text" class="from-control" name="email" required="required" value="<c:out
                           value='${user.email}'/>">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>User Country</label>
                        <input type="text" class="from-control" name="country" required="required" value="<c:out
                           value='${user.country}'/>">
                    </fieldset>

                    <button type="submit" class="btn btn-success">Save</button>
                </form>

            </form>


        </div>

    </div>
</div>
</body>
</html>
