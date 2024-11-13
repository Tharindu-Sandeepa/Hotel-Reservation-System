<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel List</title>
<link rel="stylesheet" type="text/css" href="../style/hotel.css">
<!-- Link to your CSS file -->
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
</head>
<body>
	<header>
		<nav>
			<ul>
				<li><a href="addhotel.jsp">Add Hotel</a></li>
				<li><a href="viewHotel.jsp">View Hotel List</a></li>
				<li><a href="../index.jsp">Logout</a></li>
				<!-- Add a Logout link -->
			</ul>
		</nav>
	</header>
	<h1 id="page-title">Hotel List</h1>
	<table id="hotel-table" border="1">
		<thead>
			<tr class="table-header">
				<th>Hotel ID</th>
				<th>Name</th>
				<th>Type</th>
				<th>Photo</th>
				<th>Actions</th>
			</tr>
		</thead>
		<c:forEach var="hotel"
			items="<%=com.hotel.HotelDBUtil.getAllHotels()%>">
			<tr class="table-row">
				<td class="table-cell">${hotel.id}</td>
				<td class="table-cell">${hotel.name}</td>
				<td class="table-cell">${hotel.type}</td>
				<td class="table-cell"><img class="table-image"
					src="../showphoto.jsp?id=${hotel.id}" alt="${hotel.name} Photo">
				</td>
				<td class="button-cell">
					<form class="button-form" action="../updateHotel.jsp" method="post">
						<input type="hidden" name="id" value="${hotel.id}" /> <input
							type="hidden" name="name" value="${hotel.name}" /> <input
							type="hidden" name="type" value="${hotel.type}" /> <input
							class="button-submit" type="submit" value="Update" />
					</form>
					<form class="button-form" action="../deleteHotel.jsp" method="get">
						<input type="hidden" name="id" value="${hotel.id}" /> <input
							class="button-submit" type="submit" value="Delete" />
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>