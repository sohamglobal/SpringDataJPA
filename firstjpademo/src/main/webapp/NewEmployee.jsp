<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 35px;">
    <div class="container">
        <h1 class="display-4">New Employee Form</h1>
        <hr>
        <form action="addemp" method="post">
            <table>
                <tr>
                    <td>Number</td>
                    <td><input type="number" name="empno" autocomplete="off" required class="form-control"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="empnm" autocomplete="off" required class="form-control"></td>
                </tr>
                <tr>
                    <td>Department</td>
                    <td>
                        <select name="dept" class="form-control">
                            <option value="marketing">Marketing</option>
                            <option value="development">Development</option>
                            <option value="admin">Admin</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Post</td>
                    <td><input type="text" name="post" autocomplete="off" required class="form-control"></td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td><input type="text" name="location" autocomplete="off" required class="form-control"></td>
                </tr>
                <tr>
                    <td>Salary</td>
                    <td><input type="number" name="salary" autocomplete="off" required class="form-control"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit" class="btn btn-primary"></td>
                    <td></td>
                </tr>
            </table>
        </form>
        </div>


</body>
</html>