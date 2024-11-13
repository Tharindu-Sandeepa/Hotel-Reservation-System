<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Admin</title>
</head>
<body>
    <%
    String admID = request.getParameter("admID");
    String name = request.getParameter("name");
    String username = request.getParameter("username");
    %>

    <h1>Do you want to delete?</h1>

    <form action="addelete" method="post">
        <input type="hidden" name="admID" value="<%=admID%>" readonly>
        <input type="hidden" name="name" value="<%=name%>" readonly>
        <input type="hidden" name="username" value="<%=username%>" readonly>
        <br>
        <input type="submit" name="submit" value="Delete">
    </form>
</body>
</html>
