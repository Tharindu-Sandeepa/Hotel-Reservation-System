<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Admin</title>
    <link rel="stylesheet" href="style/admstyle.css">
    <style>
        

        

        

        form {
        margin-top:30px;
            background-color: gray;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-top: 10px;
            color: black;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 6px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45A049;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="navbar">
            <a href="#" class="active">Dashboard</a>
            <a href="NewCustomerListServlet">Customer Accounts</a>
            <a href="adminlist.jsp">Admin Accounts</a>
            <a href="viewHotel.jsp">Hotel List</a>
            
        </div>
    </div>

    <div class="sublog">
        <button id="log"><a href="../home page/logout.php">Logout</a></button>
    </div>

    <h1>Add Admin</h1>
    <form action="AdminUpdateServlet" method="post">
        <input type="hidden" name="admID" value="${param.admID}" readonly>
        <label for="name">Name:</label>
        <input type="text" name="name" value="${param.name}" required><br>
        <label for="username">Username:</label>
        <input type="text" name="username" value="${param.username}" required><br>
        <input type="submit" name="submit" value="Update">
    </form>
</body>
</html>
