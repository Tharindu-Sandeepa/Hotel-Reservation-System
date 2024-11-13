<html>
<head>
	<link rel="stylesheet" href="style/admstyle.css">
	<style>
	.boxcontainer2{
		
		margin-top: 20%;
	display: flex;
	justify-content: center;
	
		
	}
	p{
	color:white;
	font-size:20px;
			
	}
	
</style>

</head>

<body>

	
	<div class="header">	 
		<div class="navbar">
			<a href="admindash.jsp" class="active">Dashboard</a>
			<a href="NewCustomerListServlet">Customer Accounts</a>
			<a href="adminlist.jsp">Admin Accounts</a>
			<a href="viewHotel.jsp">Hotel List</a>
			
		</div>
		
	</div>
	
	<div class="sublog">
	
		<button id="log"><a href="index.jsp">logout</a></button>
		
	</div>
	
	<div class="boxcontainer2">
			 <div class="box">
               
						<button class="itembtn"><a href="customerInsert.jsp">Add Customer</a></button>
                    <p>Customer Count: ${customerCount}</p>
                 
			</div>
			 <div class="box">
               
						<button class="itembtn"><a href="addhotel.jsp">Add Hotel</a></button>
                   <p>Hotel Count: ${hotelCount}</p>
                 
			</div>
			 <div class="box">
               
						<button class="itembtn"><a href=admininsert.jsp>Add Admin</a></button>
                   
                 <p>Admin Count: ${adminCount}</p>
			</div>
			
			<div class="box">
               
						<button class="itembtn"><a href=addmanager.jsp>Add Manager</a></button>
                   
                 <p>Admin Count: ${managerCount}</p>
			</div>
			
			 
<div>

</body>
</html>