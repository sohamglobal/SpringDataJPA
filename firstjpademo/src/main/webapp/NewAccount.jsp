<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NewAccount</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 35px;">
    <div class="container">
        <h1 class="display-4">New Account Form</h1>
        <hr>
        <form action="addacc" method="post">
            <table>
                <tr>
                    <td>Number</td>
                    <td><input type="number" name="accno" autocomplete="off" required class="form-control"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="accnm" autocomplete="off" required class="form-control"></td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td>
                        <select name="acctype" class="form-control">
                            <option value="saving">Saving</option>
                            <option value="fixed">Fixed</option>
                            <option value="current">Current</option>
                            <option value="ppf">PPF</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Balance</td>
                    <td><input type="number" name="balance" autocomplete="off" required class="form-control"></td>
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