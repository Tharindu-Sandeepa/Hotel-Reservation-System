<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style/table.css">
<link rel="stylesheet" href="style/admstyle.css">

    <meta charset="ISO-8859-1">
    <title>Customer List</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String userName = request.getParameter("uname");
	String password = request.getParameter("pass");
	%>
<div class="header">	 
		<div class="navbar">
			<a href="admindash.jsp" >Dashboard</a>
			<a href="NewCustomerListServlet" class="active">Customer Accounts</a>
			<a href="adminlist.jsp">Admin Accounts</a>
			<a href="viewHotel.jsp">Hotel List</a>
			
		</div>
		
	</div>
	
	<div class="sublog">
	
		<button id="log"><a href="index.jsp">logout</a></button>
		
	</div>
    <table>
        <tr>
            <th>Customer ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Username</th>
            <th>Password</th>
            <th>Action</th>
        </tr>
        <c:forEach var="customer" items="${customerList}">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.phone}</td>
                <td>${customer.userName}</td>
                <td>${customer.password}</td>
                <td>
                    <form action="updateCustomer.jsp" method="post">
                        <input type="hidden" name="id" value="${customer.id}" />
                        <input type="hidden" name="name" value="${customer.name}" />
                        <input type="hidden" name="email" value="${customer.email}" />
                        <input type="hidden" name="phone" value="${customer.phone}" />
                        <input type="hidden" name="username" value="${customer.userName}" />
                        <input type="hidden" name="password" value="${customer.password}" />
                        <input type="submit" value="Update" />
                    </form>
                    <form action="deleteCustomer.jsp" method="post">
                        <input type="hidden" name="id" value="${customer.id}" />
                        <input type="submit" value="Delete " />
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
