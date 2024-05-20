<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false" %>
<html>
<head>
    <title>Login</title>
    <%--Styles--%>
    <%@include file="component/css.jsp" %>
</head>

<body>
<%--NavBar--%>
<%@include file="component/navbar.jsp" %>

<div class="container p-5">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-header text-center bg-primary text-white">
                    <p class="fs-4 text-center mt-2">
                        <i class="fa fa-group"></i> User Login
                    </p>
                </div>

                <div class="card-body">
                    <!-- for message -->
                    <!-- success message -->
                    <c:if test="${not empty successMsg }">
                        <p class="text-center text-success fs-5">${successMsg}</p>
                        <c:remove var="successMsg" scope="session"/>
                    </c:if>

                    <!-- error message -->
                    <c:if test="${not empty errorMsg }">
                        <p class="text-center text-danger fs-5">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>
                    <!-- end of message -->


                    <!-- FORM boostrap  -->
                    <form action="userLogin" method="post">
                        <div class="mb-3">
                            <label class="form-label">Email address</label> <input
                                name="email" type="email" placeholder="Enter Email"
                                class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label> <input
                                name="password" type="password" placeholder="Enter password"
                                class="form-control">
                        </div>

                        <button type="submit"
                                class="btn col-md-12 btn-primary">Submit
                        </button>
                    </form>
                    <br>Don't have an account? <a href="register.jsp" class="text-decoration-none">create one</a>
                    <!-- end of boostrap form -->
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

