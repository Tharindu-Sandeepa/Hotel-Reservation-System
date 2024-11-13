<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Manager Registration</title>
    <style>
        body {
            background-image: url("img/back2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #FFFFFF;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 100px auto;
            background-color: #222222;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 5px;
            border: none;
            border-radius: 3px;
        }

        .form-group input[type="submit"] {
            background-color: #008000;
            color: #FFFFFF;
            cursor: pointer;
        }

        .form-group input[type="submit"]:hover {
            background-color: #006400;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Manager</h2>
        <form action="../managerinsert" method="post">
            <div class="form-group">
                Name <input type="text" name="name" placeholder="Enter Name"><br>
            </div>
            <div class="form-group">
                User Name <input type="text" name="username" placeholder="Enter Username"><br>
            </div>
            <div class="form-group">
                Password <input type="password" name="password" placeholder="Enter Password"><br>
            </div>
            <div class="form-group">
                <input type="submit" name="submit" value="Create Manager">
            </div>
        </form>
    </div>
</body>
</html>
