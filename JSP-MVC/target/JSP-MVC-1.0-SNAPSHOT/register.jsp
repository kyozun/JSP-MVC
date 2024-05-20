<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Register</title>
    <%--Styles--%>
    <%@include file="component/css.jsp" %>
</head>
<body>
<%--NavBar--%>
<%@include file="component/navbar.jsp" %>

<!-- User Register -->
<div class="container p-5">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card my-card">
                <div class="card-header text-center">
                    <p class="fs-4 text-center mt-2">
                        <i class="fa fa-user-plus"></i> User Register
                    </p>
                </div>
                <div class="card-body">

                    <!-- message print -->
                    <!-- for success msg -->
                    <c:if test="${not empty successMsg }">
                        <p class="text-center text-success fs-3">${successMsg}</p>
                        <c:remove var="successMsg" scope="session"/>
                    </c:if>

                    <!-- for error msg -->
                    <c:if test="${not empty errorMsg }">
                        <p class="text-center text-danger fs-3">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>
                    <!-- End of message print -->

                    <!-- boostrap form -->
                    <form action="userRegister" method="post">
                        <div class="mb-3">
                            <label class="form-label">Full Name</label> <input
                                name="fullName" type="text" placeholder="Enter full name"
                                class="form-control">

                        </div>
                        <div class="mb-3">
                            <label class="form-label">Email address</label> <input
                                name="email" type="email" placeholder="Enter Email"
                                class="form-control">
                            <div id="emailHelp" class="form-text">We'll never share
                                your email with anyone else.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label> <input
                                name="password" type="password" placeholder="Enter password"
                                class="form-control">
                        </div>

                        <button type="submit" class="btn btn-primary col-md-12">Register</button>
                    </form>
                    <!-- end of boostrap form -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End of User Register -->

</body>
</html>


