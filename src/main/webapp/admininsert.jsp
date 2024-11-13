<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Registration</title>
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
        <h2>Add Admin</h2>

    <form action="admininsert" method="post" onsubmit="return validateForm()">
    <div class="form-group">
        Name <input type="text" name="name" id="name" placeholder="Enter Name"><br>
        <span id="nameError" class="error"></span>
    </div>
    <div class="form-group">
        User Name <input type="text" name="username" id="username" placeholder="Enter Username"><br>
        <span id="usernameError" class="error"></span>
    </div>
    <div class="form-group">
        Password <input type="password" name="password" id="password" placeholder="Enter Password"><br>
        <span id="passwordError" class="error"></span>
    </div>
    <div class="form-group">
        <input type="submit" name="submit" value="Create Admin">
    </div>
</form>

<script>
    function validateForm() {
        var name = document.getElementById("name").value;
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        var hasErrors = false;

        document.getElementById("nameError").innerHTML = "";
        document.getElementById("usernameError").innerHTML = "";
        document.getElementById("passwordError").innerHTML = "";

        if (name.trim() === "") {
            document.getElementById("nameError").innerHTML = "Name is required";
            hasErrors = true;
        }

        if (username.trim() === "") {
            document.getElementById("usernameError").innerHTML = "Username is required";
            hasErrors = true;
        }

        if (password.trim() === "") {
            document.getElementById("passwordError").innerHTML = "Password is required";
            hasErrors = true;
        } else if (password.length < 6) { // Minimum password length check
            document.getElementById("passwordError").innerHTML = "Password must be at least 6 characters long";
            hasErrors = true;
        }

        return !hasErrors;
    }
</script>

    </div>
</body>
</html>
