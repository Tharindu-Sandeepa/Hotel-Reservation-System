<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin List</title>
    <link rel="stylesheet" href="style/table.css">
<link rel="stylesheet" href="style/admstyle.css">
<style>
table{
width:40%;
}
#d{
	background-color: #ff5454;
}
</style>
</head>
<body>
<div class="header">	 
		<div class="navbar">
			<a href="admindash.jsp" >Dashboard</a>
			<a href="NewCustomerListServlet">Customer Accounts</a>
			<a href="adminlist.jsp" class="active">Admin Accounts</a>
			<a href="viewHotel.jsp">Hotel List</a>
			
		</div>
		
	</div>
	
	<div class="sublog">
	
		<button id="log"><a href="index.jsp">logout</a></button>
		
	</div>



<table border="1">
    <thead>
        <tr>
            <th>Admin ID</th>
            <th>Username</th>
            <th>Name</th>
            <th>Delete</th> <!-- Added a new column for delete buttons -->
        </tr>
    </thead>
    <tbody>
        <c:forEach var="admin" items="<%= com.admin.AdminDBUtil.getAllAdmins() %>">
            <tr>
                <td>${admin.admID}</td>
                <td>${admin.username}</td>
                <td>${admin.name}</td>
                <td>
                <form action="updateAdmin.jsp" method="post">
                       <input type="hidden" name="admID" value="${admin.admID}" readonly>
                        <input type="hidden" name="name" value="${admin.name}" readonly>
                        <input type="hidden" name="username" value="${admin.username}" readonly>
                        
                        <input type="submit" value="Update" />
                    </form>
                    <form action="adminDelete.jsp" method="post">
                        <input type="hidden" name="admID" value="${admin.admID}" readonly>
                        <input type="hidden" name="name" value="${admin.name}" readonly>
                        <input type="hidden" name="username" value="${admin.username}" readonly>
                        <input type="submit" name="submit" value="Delete" id="d">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
