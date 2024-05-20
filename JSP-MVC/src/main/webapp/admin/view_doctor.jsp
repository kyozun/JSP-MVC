<%@page import="cuong.dao.DoctorDAO" %>
<%@page import="java.util.List" %>
<%@ page import="cuong.database.DBConnection" %>
<%@ page import="cuong.entity.Doctor" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor page</title>
    <%--Styles--%>
    <%@include file="../component/css.jsp" %>
</head>

<body>
<%--NavBar--%>
<%@include file="navbar.jsp" %>



<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-12">
            <div class="card my-card">
                <div class="card-body">
                    <p class="fs-3 text-center text-danger">List of Doctors</p>

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

                    <!-- Show list -->
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Full Name</th>
                            <th scope="col">DOB</th>
                            <th scope="col">Qualification</th>
                            <th scope="col">Specialist</th>
                            <th scope="col">Email</th>
                            <th scope="col">Phone</th>
                            <th colspan="2" class="text-center" scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>

                        <%
                            DoctorDAO doctorDAO = new DoctorDAO(DBConnection.getConnection());
                            List<Doctor> allDoctor = doctorDAO.getAllDoctor();
                            for (Doctor doctorList : allDoctor) {
                        %>
                        <tr>
                            <th scope="row"><%= doctorList.getId()%>
                            </th>
                            <th><%=doctorList.getFullName()%>
                            </th>
                            <td><%=doctorList.getDateOfBirth()%>
                            </td>
                            <td><%=doctorList.getQualification()%>
                            </td>
                            <td><%=doctorList.getSpecialist()%>
                            </td>
                            <td><%=doctorList.getEmail()%>
                            </td>
                            <td><%=doctorList.getPhone()%>
                            </td>

                            <td>
                                <a class="btn btn-sm btn-primary" href="edit_doctor.jsp?id=<%=doctorList.getId()%>">Edit</a></td>
                            <td>
                                <a class="btn btn-sm btn-danger" href="../deleteDoctor?id=<%= doctorList.getId()%>">Delete</a>
                            </td>
                        </tr>
                        <%
                            }
                        %>

                        </tbody>
                    </table>

                </div>

            </div>
        </div>
    </div>
</div>

</body>
</html>