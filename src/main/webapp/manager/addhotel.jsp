<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Add Hotel</title>
    <head>
    <meta charset="UTF-8">
    <title>Add Hotel</title>
    <link rel="stylesheet" type="text/css" href="../style/hotel.css"> <!-- Link to your CSS file -->
</head>
    
</head>
<body>
    <div class="container">
        <h2>Add Hotel</h2>
        <form action="../Hotelinsertservlet" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Hotel Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            
           
            
            <div class="form-group">
            <label for="roomType">Choose Room Type:</label>
            <select id="type" name="type" required>
                <option value="standard">Standard</option>
                <option value="deluxe">Deluxe</option>
                <option value="suite">Suite</option>
            </select>
            </div>
            
<div class="form-group">
    <label for="photo">Hotel Photo:</label>
    <input type="file" id="photo" name="photo" accept="image/*">
</div>
            <div class="form-group">
                <input type="submit" value="Add Hotel">
            </div>
            </form>
    </div>
</body>
</html>
