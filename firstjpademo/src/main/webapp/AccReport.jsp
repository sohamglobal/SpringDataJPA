<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 35px;">
<div class="container">
    <h2 class="display-4">Accounts Report by JPA</h2>
    <a href="index.jsp">Home</a>
    <hr>
    <table class="table table-bordered">
        <tr>
            <th>Number</th>
            <th>Name</th>
            <th>Type</th>
            <th>Balance</th>
            
        </tr>

<c:forEach items="${acclist}" var="ac">
<tr>
    <td>${ac.accno}</td>
    <td>${ac.accnm}</td>
    <td>${ac.acctype}</td>
    <td>${ac.balance}</td>
    
</tr>
</c:forEach>

    </table>

</div>


</body>
</html>