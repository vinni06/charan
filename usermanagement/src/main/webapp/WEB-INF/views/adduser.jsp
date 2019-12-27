<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
<link rel="stylesheet" href="/resources/css/adduserstyle.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>


	<div class="row">

		<div class="col-md-11 header">
			<h1>Add User</h1>

		</div>

	</div>
	<div class="row">

		<div class="col-md-11 content">

			<div class="formDiv">
				<!-- <form action="/add" class="form" method="post" id="addForm"> -->
				<!-- 
					<div class="form-group">
						<label for="usr">Name:</label> <input type="text"
							class="form-control inp" id="name" style="width: 400px">
					</div>
					<div class="form-group">
						<label for="pwd">Phone:</label> <input type="text"
							class="form-control inp" id="phn" style="width: 400px">
					</div>
					<div class="form-group">
						<label for="pwd">Email:</label> <input type="email"
							class="form-control inp" id="phn" style="width: 400px">
					</div>
 -->


				<div class="form">
					<form action="add" method="post" onsubmit="return validateAdding()">



						<label>Name: </label> <input type="text" class="form-control inp"
							name="userName" id="name"> <label>Phone: </label> <input
							type="text" class="form-control inp" name="phone" id="phone">
						<label>Email: </label> <input type="email"
							class="form-control inp" name="email" id="email"> <br>
						<button class="btn btn-success btnAddUser" type="submit">Add
							User</button>

						<button class="btn btn-light btnHome"
							onclick="location.href = '/';" type="button"
							style="margin-left: 70px; width: 100px;">Home</button>


					</form>

				</div>


		
			</div>

		</div>
	</div>
	<!-- jQuery library --> 
	<script type="text/javascript" src="/resources/js/script.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>