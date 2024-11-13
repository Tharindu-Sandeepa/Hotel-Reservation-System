<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Add Customer</title>
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
        <h2>Add Customer</h2>
        <form action="insert" method="POST" onsubmit="return validateForm()">
    <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" id="username" name="uid" required>
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
    </div>
    <div class="form-group">
        <label for="first_name">Name:</label>
        <input type="text" id="first_name" name="name" required>
    </div>
    
    <div class="form-group">
        <label for="phone_number">Phone Number:</label>
        <input type="tel" id="phone_number" name="phone" required>
    </div>
    <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="psw" required>
    </div>
    <div class="form-group">
        <input type="submit" value="Add Customer">
    </div>
</form>

<script>
function validateForm() {
    var username = document.getElementById("username").value;
    var email = document.getElementById("email").value;
    var name = document.getElementById("first_name").value;
    var phone = document.getElementById("phone_number").value;
    var password = document.getElementById("password").value;
    
    // Basic validation examples; you can customize these as needed
    if (username.trim() === "") {
        alert("Username must not be empty.");
        return false;
    }
    if (email.trim() === "" || !isValidEmail(email)) {
        alert("Please enter a valid email address.");
        return false;
    }
    if (name.trim() === "") {
        alert("Name must not be empty.");
        return false;
    }
    if (phone.trim() === "" || !isValidPhoneNumber(phone)) {
        alert("Please enter a valid phone number.");
        return false;
    }
    if (password.trim() === "" || password.length < 6) {
        alert("Password must be at least 6 characters.");
        return false;
    }
    
    return true;
}

function isValidEmail(email) {
    // You can use a regular expression to validate email format
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    return emailPattern.test(email);
}

function isValidPhoneNumber(phone) {
    // You can use a regular expression to validate phone number format
    var phonePattern = /^\d{10}$/; // Change this pattern as per your requirements
    return phonePattern.test(phone);
}
</script>

    </div>
</body>
</html>
