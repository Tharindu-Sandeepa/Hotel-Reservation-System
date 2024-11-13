<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Hotel</title>
</head>
<body>
    <h1>Update Hotel</h1>
    <form action="UpdateHotelServlet" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${param.id}">
        Hotel Name: <input type="text" name="name" value="${param.name}"><br>
        Hotel Type: <input type="text" name="type" value="${param.type}"><br>
        Hotel Image: <input type="file" name="image"><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
