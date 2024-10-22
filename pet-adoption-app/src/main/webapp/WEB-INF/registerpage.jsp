<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Title</title>
	
	<!-- CSS -->
	<Link rel="stylesheet" href="/assets/css/bootstrap.min.css"/>
	<Link rel="stylesheet" href="/assets/css/header.css"/>
	<Link rel="stylesheet" href="/assets/css/body.css"/>
	
</head>
<body>

	<h1>Register Page</h1>
	<hr/>
	
	<form:form action="/account/register" method="post" modelAttribute="reg_account">
		<div>
			<form:label path="user_first_name">First Name:</form:label>
			<form:errors path="user_first_name"/>
			<form:input path="user_first_name" type="text" name="fname" placeholder="Enter first name here"/>
		</div>
		<div>
			<form:label path="user_middle_name">Middle Name:</form:label>
			<form:errors path="user_middle_name"/>
			<form:input path="user_middle_name" type="text" name="mname" placeholder="Enter middle name here"/>
		</div>
		<div>
			<form:label path="user_last_name">Last Name:</form:label>
			<form:errors path="user_last_name"/>
			<form:input path="user_last_name" type="text" name="lname" placeholder="Enter last name here"/>
		</div>
		<div>
			<form:label path="user_email">Email:</form:label>
			<form:errors path="user_email"/>
			<form:input path="user_email" type="email" name="email" placeholder="Enter email here"/>
		</div>
		<div>
			<form:label path="user_password">Password:</form:label>
			<form:errors path="user_password"/>
			<form:input path="user_password" type="password" name="pw" placeholder="Enter password here"/>
		</div>
		<div>
			<form:label path="user_phone_number">Phone Number:</form:label>
			<form:errors path="user_phone_number"/>
			<form:input path="user_phone_number" type="number" name="phnumber" placeholder="Enter phone number here"/>
		</div>
		<div>
			<form:label path="user_address">Address:</form:label>
			<form:errors path="user_address"/>
			<form:input path="user_address" type="text" name="address" placeholder="Enter address here"/>
		</div>
		<div>
			<input type="submit" value="submit"/>||<input type="reset" value="clear"/>
		</div>
	</form:form>
	
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>