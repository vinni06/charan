<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Users</title>
<link rel="stylesheet" href="/resources/css/displayusersstyle.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

<form action="/displayUsers" method="get"></form>
	<div class="row">

		<div class="col-md-11 header">
			<h1>Users in Database</h1>
		</div>

	</div>
	<div class="row">

		<div class="col-md-11 content">
			<table class="table table-striped table-hover usersTable">
				<thead>
					<tr>
						<th>Name</th>
						<th>Phone</th>
						<th>Email</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${userList}" var="user" >
						<tr>
			
							<td><c:out value="${user.userName}"></c:out></td>
							<td><c:out value="${user.phone}"></c:out></td>
							<td><c:out value="${user.email}"></c:out></td>
						</tr>
					</c:forEach>
				</tbody>
		

			</table>

			<div class="btnDiv">
				<button class="btn btn-light btnHome" onclick="location.href = '/';"
					type="button">Home</button>
			</div>
		</div>

	</div>
	<!-- jQuery library -->
	<!-- 
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