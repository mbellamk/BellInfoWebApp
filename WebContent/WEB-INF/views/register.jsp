<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<div class="row">
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="col-xs-1"></div>
				<div class="col-xs-1"></div>

				<div class="col-xs-1"></div>
				<div class="col-xs-1"></div>
				<div class="col-xs-1"></div>
				<div class="col-xs-4">
					<h1>Register To BellInfo</h1>
				</div>


				<div class="col-xs-2"></div>

				<div class="col-xs-1">
					<h2><a href="login">Login</a></h2>
				</div>
				<div class="col-xs-1"></div>
			</nav>

		</div>
		<br/><br/><br/>
		<c:url var="registerUserUrl" value="/registerUser" />
		<form:form action="${registerUserUrl}" method="POST"
			modelAttribute="userPojo">
			<div class="form_style_glow" align="center">
				<br />
				<div class="form-group row">
					<div class="col-xs-2">
						<label>First Name:</label>
					</div>
					<div class="col-xs-10">
						<form:input type="text" path="firstName" name="firstName"
							maxlength="15" class="form-control"
							placeholder="Enter First Name" required="required" />
					</div>
				</div>
				<div class="form-group row">
					<div class="col-xs-2">
						<label>Last Name: </label>
					</div>
					<div class="col-xs-10">
						<form:input type="text" path="lastName" name="lastName"
							class="form-control" maxlength="15" placeholder="Enter Last Name"
							required="required" />
					</div>
				</div>
				<div class="form-group row">
					<div class="col-xs-2">
						<label>Email: </label>
					</div>
					<div class="col-xs-10">
						<form:input type="email" class="form-control" path="email"
							name="email" placeholder="Enter Email" required="required" />
					</div>
				</div>
				<div class="form-group row">
					<div class="col-xs-2">
						<label>Phone Number: </label>
					</div>
					<div class="col-xs-10">
						<form:input class="form-control" type="tel" path="phoneNumber"
							name="phoneNumber" pattern="^[0-9]{0,10}$"
							placeholder="Enter Phone Number" maxlength="10" />
					</div>
				</div>
				<div class="form-group row">
					<div class="col-xs-2">
						<label>User Name: </label>
					</div>
					<div class="col-xs-10">
						<form:input class="form-control" type="text" path="userName"
							name="userName" placeholder="Enter User name" maxlength="10"
							required="required" />
					</div>
				</div>
				<div class="form-group row">
					<div class="col-xs-2">
						<label>Password: </label>
					</div>
					<div class="col-xs-10">
						<form:input class="form-control" type="password" path="password"
							name="password" placeholder="Enter Password" maxlength="15"
							required="required" />
					</div>
				</div>

				<button class="btn btn-primary" type="submit">Register</button>
				<br /> <br /> <br />
			</div>
		</form:form>
	</div>
</body>
</html>