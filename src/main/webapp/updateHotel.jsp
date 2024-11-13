<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Hotel</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        h1 {
            font-size: 24px;
            color: #333;
        }
        form {
            width: 300px;
            padding: 20px;
            background-color: #f4f4f4;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            background-color: #3498db;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
    </style>
</head>

<body>
    
    <form action="UpdateHotelServlet" method="post">
        <input type="hidden" name="id" value="${param.id}">
        Hotel Name: <input type="text" name="name" value="${param.name}"><br>
        Hotel Type: <input type="text" name="type" value="${param.type}"><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
