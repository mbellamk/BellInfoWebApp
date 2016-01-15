<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<%-- <link href="<c:url value='/css/bootstrap.css' />"  rel="stylesheet"></link>
		<link href="<c:url value='/css/app.css' />" rel="stylesheet"></link>
		<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" /> --%>
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


				<div class="col-xs-1"></div>
				

				<div class="col-xs-1">
					<h2><a href="register">Register</a></h2>
				</div>
				
			</nav>

		</div>
		<br/><br/><br/><br/><br/>
	
		<div class="login-container">

			<div class="login-card">
				<div class="login-form">
					<c:url var="loginUrl" value="/login" />
					<form action="${loginUrl}" method="post" class="form-horizontal">
						<c:if test="${param.error != null}">
							<div class="alert alert-danger">
								<p>Invalid username and password.</p>
							</div>
						</c:if>
						<c:if test="${param.failure != null}">
							<div class="alert alert-danger">
								<p>User Registration Failed</p>
							</div>
						</c:if>
						<c:if test="${param.logout != null}">
							<div class="alert alert-success">
								<p>You have been logged out successfully.</p>
							</div>
						</c:if>
						<c:if test="${param.success != null}">
							<div class="alert alert-success">
								<p>User Registration Successful</p>
							</div>
						</c:if>
						<div class="input-group input-sm">
							<label class="input-group-addon" for="username">User Name</label>
							<input type="text" class="form-control" id="username"
								name="username" placeholder="Enter Username" required>
						</div>
						<div class="input-group input-sm">
							<label class="input-group-addon" for="password">Password</label>
							<input type="password" class="form-control" id="password"
								name="password" placeholder="Enter Password" required>
						</div>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />

						<div class="form-actions" align="center">
							<button type="submit"
								class="btn btn-primary" >Login</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>