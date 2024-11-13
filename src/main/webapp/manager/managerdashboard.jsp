<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.container {
    text-align: center;
    background-color: #fff;
    margin: 50px auto;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

h1 {
    color: #0077b6;
}

.buttons {
    margin-top: 20px;
}

.button {
    display: inline-block;
    background-color: #0077b6;
    color: #fff;
    text-decoration: none;
    padding: 10px 20px;
    margin: 10px;
    border-radius: 5px;
    text-align: center;
    transition: background-color 0.3s;
}

.button:hover {
    background-color: #005a91;
    
}

/* Your existing CSS for the container, buttons, and header goes here */


header {
    background-color: #0077b6;
    padding: 10px 0;
}

nav {
    text-align: center;
}

nav ul {
    list-style: none;
    padding: 0;
}

nav li {
    display: inline;
    margin: 0 10px;
}

nav a {
    color: #fff;
    text-decoration: none;
}

/* Style for the footer */
footer {
    background-color: #0077b6;
    color: #fff;
    text-align: center;
    padding: 10px 0;
}

footer p {
    margin: 0;
}

.logo img {
    max-width: 100px;
}

.social-media {
    margin-top: 10px;
}

</style>
    <meta charset="UTF-8">
    <title>Manager Dashboard</title>
    <link rel="stylesheet" type="text/css" href="style/managerstyle.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="addhotel.jsp">Add Hotel</a></li>
                <li><a href="viewHotel.jsp">View Hotel List</a></li>
                <li><a href="../index.jsp">Logout</a></li> <!-- Add a Logout link -->
            </ul>
        </nav>
    </header>

    <div class="container">
        <h1>Welcome, Manager!</h1>
    </div>

   
</body>
</html>