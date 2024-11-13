<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manager List</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="Manager" items="<%= com.manager.ManagerDBUtil.getAllManagers() %>">
                <tr>
                    <td>${Manager.id}</td>
                    <td>${Manager.name}</td>
                    <td>${Manager.email}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
