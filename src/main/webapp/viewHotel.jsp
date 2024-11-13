<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style/table.css">
<link rel="stylesheet" href="style/admstyle.css">
    <meta charset="UTF-8">
    
</head>
<body>

<div class="header">	 
		<div class="navbar">
			<a href="admindash.jsp" >Dashboard</a>
			<a href="NewCustomerListServlet">Customer Accounts</a>
			<a href="adminlist.jsp">Admin Accounts</a>
			<a href="viewHotel.jsp" class="active">Hotel List</a>
			
		</div>
		
	</div>
	
	<div class="sublog">
	
		<button id="log"><a href="index.jsp">logout</a></button>
		
	</div>
	<style>
	table{
	
	width:30%;

	margin-top:50px;
	}
	table img {
            max-width: 100px; /* Set a fixed maximum width for the images */
            height: auto; /* Maintain the aspect ratio */
        }
	</style>

<table border="1">
    <thead>
        <tr>
            <th>Hotel ID</th>
            <th>Name</th>
            <th>Type</th>
            <th>Photo</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="hotel" items="<%= com.hotel.HotelDBUtil.getAllHotels() %>">
            <tr>
                <td>${hotel.id}</td>
                <td>${hotel.name}</td>
                <td>${hotel.type}</td>
                <td>
                    <img src="showphoto.jsp?id=${hotel.id}" alt="${hotel.name} Photo">
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
