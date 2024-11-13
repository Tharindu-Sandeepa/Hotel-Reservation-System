<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Hotel</title>
</head>
<body>
    <h1>Delete Hotel</h1>
    <form action="../deletehotel" method="post">
        <input type="hidden" name="hotelId" value="${param.id}">
        Are you sure you want to delete this hotel?
        <input type="submit" value="Delete">
    </form>
</body>
</html>
