<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EmpReport</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 35px;">
<div class="container">
    <h2 class="display-4">Employee Report by JPA</h2>
    <a href="index.jsp">Home</a>
    <hr>
    <table class="table table-bordered">
        <tr>
            <th>Number</th>
            <th>Name</th>
            <th>Department</th>
            <th>Post</th>
            <th>Location</th>
            <th>Salary</th>
        </tr>

<c:forEach items="${emplist}" var="el">
<tr>
    <td>${el.empno}</td>
    <td>${el.empnm}</td>
    <td>${el.dept}</td>
    <td>${el.post}</td>
    <td>${el.location}</td>
    <td>${el.salary}</td>
</tr>
</c:forEach>

    </table>

</div>
</body>
</html>