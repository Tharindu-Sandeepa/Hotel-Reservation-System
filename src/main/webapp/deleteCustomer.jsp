<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style/table.css">
<link rel="stylesheet" href="style/admstyle.css">
<style>
h1{color:white;
}

</style>
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

	<h1>Do you want to delete ? &nbsp&nbsp </h1></br>

	<form action="delete" method="post">
		
			
				
				<input type="hidden" name="cusid" value="<%=id%>" readonly>
			
		
				<input type="hidden" name="name" value="<%=name%>" readonly>
			
		
				<input type="hidden" name="email" value="<%=email%>"
					readonly>
			
				
				<input type="hidden" name="phone" value="<%=phone%>"
					readonly>
			
				
				<input type="hidden" name="uname" value="<%=userName%>"
					readonly>
					
		
		<br> <input type="submit" name="submit" value="Delete">
	</form>
</body>
</html>