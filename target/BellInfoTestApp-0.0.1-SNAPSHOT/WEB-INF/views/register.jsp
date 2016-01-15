<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>

	<c:url var="registerUserUrl" value="/registerUser" />
	<form:form action="${registerUserUrl}" method="POST" modelAttribute="userPojo" >
		<div class="form_style_glow" align="center">
			 <br />
			<label>First Name:</label> <form:input type="text" path="firstName" name="firstName"
				maxlength="15" placeholder="Enter First Name" required="required" />
			<br /> <br /> <label>Last Name: </label><form:input type="text" path="lastName"
				name="lastName" maxlength="15" placeholder="Enter Last Name"
				required="required" /> <br /> <br /> <label>Email: </label><form:input
				type="email"  path="email" name="email" placeholder="Enter Email"
				required="required" /> <br /> <br /> <label>Phone Number:
			</label><form:input type="tel"  path="phoneNumber"  name="phoneNumber" pattern="^[0-9]{0,10}$"
				placeholder="Enter Phone Number" maxlength="10" /> <br /> <br />
			<label>User Name: </label><form:input type="text"  path="userName"  name="userName"
				placeholder="Enter User name" maxlength="10" required="required" />
			<br /> <br /> <label>Password: </label><form:input type="password"  path="password" 
				name="password" placeholder="Enter Password" maxlength="15"
				required="required" /> <br /> <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" value="Register" /> <br /> <br /> <br />
		</div>
	</form:form>

</body>
</html>