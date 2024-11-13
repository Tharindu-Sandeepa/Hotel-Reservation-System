<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gallery</title>
    <link rel="stylesheet" type="text/css" href="style/homestyle.css">
    <!-- Include your CSS styles here -->
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    .gallery {
        text-align: center;
        padding: 40px;
    }

    .gallery h2 {
        font-size: 28px;
        margin-bottom: 20px;
    }

    .photo-gallery {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }

    .gallery-item {
        width: 300px;
        margin: 10px;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
        transition: transform 0.2s;
    }

    .gallery-item:hover {
        transform: scale(1.05);
    }

    .gallery-item img {
        width: 100%;
        height: auto;
        border-radius: 5px 5px 0 0;
    }

    .gallery-item p {
        padding: 10px;
        font-size: 16px;
    }
</style>
    
</head>
<body>
<header>
        <nav>
            <ul>
            <li><a href="index.jsp">Home</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a href="aboutus.jsp">About Us</a></li>
                
                <div class="user-login">
                    <a href="login.jsp">Login</a>
                </div>
            </ul>
        </nav>
    </header>


    <!-- Include your header and navigation bar, similar to other pages -->

    <section class="gallery">
        <h2>Hotel Photo Gallery</h2>
        <div class="photo-gallery">
            <c:forEach var="hotel" items="<%= com.hotel.HotelDBUtil.getAllHotels() %>">
                <div class="gallery-item">
                    <img src="showphoto.jsp?id=${hotel.id}" alt="${hotel.name} Photo">
                  
                   
                </div>
            </c:forEach>
        </div>
    </section>

    <!-- Include your footer, similar to other pages -->
</body>
</html>
