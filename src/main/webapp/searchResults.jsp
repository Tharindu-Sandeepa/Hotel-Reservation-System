<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
    <link rel="stylesheet" type="text/css" href="style/homestyle.css">
    <style>
    /* Define styles for the header and navigation bar */
    

    
    /* Define styles for the search results section */
    .search-results {
        text-align: center;
        margin: 20px 0;
    }

    .search-results h2 {
        font-size: 24px;
        margin-bottom: 20px;
    }

    .package-tiles {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .package-tile {
        margin: 10px;
        text-align: center;
    }

    .package-tile img {
        max-width: 200px;
        height: auto;
    }

    .learn-more-button {
        display: inline-block;
        background-color: #0077b6;
        color: #fff;
        text-decoration: none;
        padding: 10px 20px;
        border: none;
        cursor: pointer;
        font-size: 16px;
        margin-top: 10px;
        border-radius: 5px;
        text-align: center;
    }

    .learn-more-button:hover {
        background-color: #005a91;
    }
</style>
     <!-- Include your CSS styling for search results -->
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

    <div class="top-bar">
        <section class="search-bar">
    <form action="hotelSearch" method="post">
        <input type="text" id="search-input" name="searchKeyword" placeholder="Search Hotels by Name">
        <button id="search-button" type="submit">Search</button>
    </form>
</section>


    <section class="search-results">
        <c:if test="${not empty searchResults}">
            <h2>Search Results</h2>
            <div class="package-tiles">
                <c:forEach var="hotel" items="${searchResults}">
                    <!-- Display hotel information as needed -->
                    <div class="package-tile">
                        <img src="showphoto.jsp?id=${hotel.id}" alt="${hotel.name} Photo">
                        <h3>${hotel.name}</h3>
                        <p>Type: ${hotel.type}</p>
                        <a href="hotelDetails.jsp?id=${hotel.id}" class="learn-more-button">Learn More</a>
                    </div>
                </c:forEach>
            </div>
        </c:if>
    </section>

    <section class="contact">
        <h2>Contact Us</h2>
        <p>For reservations and inquiries:</p>
        <p>Phone: +1-123-456-7890</p>
        <p>Email: info@hotel.com</p>
    </section>

    <footer>
        <div class="logo">
            <img src="img/dd.gif" alt="Hotel Logo">
        </div>
        <div class="social-media">
            <p>@HotelBooking.2023</p>
        </div>
    </footer>
</body>
</html>
