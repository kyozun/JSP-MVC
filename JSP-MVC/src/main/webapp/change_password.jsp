<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<html>
<head>
    <title>Change Password</title>
    <%--Styles--%>
    <%@include file="component/css.jsp" %>
</head>
<body>
<%--NavBar--%>
<%@include file="component/navbar.jsp" %>

<!-- if not login then log in first -->
<c:if test="${empty userObj }">
    <c:redirect url="/user_login.jsp"></c:redirect>
</c:if>

<div class="container p-4">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card my-card">

                <div class="card-body">
                    <p class="fs-3 text-center">Change Password</p>

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


                    <form action="userChangePassword" method="post">
                        <div class="mb-3">
                            <label class="form-label">Enter New Password</label> <input
                                name="newPassword" type="password" placeholder="Enter new password"
                                class="form-control" required="required">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Enter Old Password</label> <input
                                name="oldPassword" type="password" placeholder="Enter old password"
                                class="form-control" required>
                        </div>
                        <input type="hidden" value="${userObj.id}" name="userId">

                        <button type="submit" class="btn btn-primary text-white col-md-12">Change Password</button>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
