<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manager Login</title>
    <link rel="stylesheet" type="text/css" href="../style/styles.css">
</head>
<body>

    <form action="../ManagerLoginServlet" method="post">
        User Name <input type="text" name="username" placeholder="Enter your username"><br>
        Password <input type="password" name="password" placeholder="Enter your password"><br>
        <input type="submit" name="submit" value="Login">
        
    </form>
</body>
</html>
