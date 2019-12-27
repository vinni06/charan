<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete User</title>
<link rel="stylesheet" href="/resources/css/deleteuserstyle.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>


	<div class="row">

		<div class="col-md-11 header">
			<h1>Delete User</h1>
		</div>

	</div>
	<div class="row">

		<div class="col-md-11 content">

			<div class="formDiv">
				<form action="delete" class="form" method="post" id="addForm">



					<!-- <div class="form-group"> -->
					<label for="usr" style="margin-left: -20px;">Please enter the
						name of the record you want to delete: </label> <input type="text"
						class="form-control inp" name="name" id="name"
						style="width: 300px;">

					<button class="btn btn-success btnUser" type="submit">Delete
						User</button>
					<button class="btn btn-light btnHome"
						onclick="location.href = '/';" type="button">Home</button>
					<!-- </div> -->

				</form>
			</div>

		</div>
	</div>
	<!-- jQuery library --><!-- 
	<script type="text/javascript" src="/resources/js/script.js"></script> -->
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