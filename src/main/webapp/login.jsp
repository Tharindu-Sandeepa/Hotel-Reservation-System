<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style/styles.css">
</head>
<body>

    <form action="login" method="post">
        User Name <input type="text" name="username" placeholder="Enter your username"><br>
        Password <input type="password" name="password" placeholder="Enter your password"><br>
        <input type="submit" name="submit" value="Login">
        <a href="adminlogin.jsp">Admin Login</a><br><br>
         <a href="manager/managerlogin.jsp">Manager Login</a>
    </form>
</body>
</html>
