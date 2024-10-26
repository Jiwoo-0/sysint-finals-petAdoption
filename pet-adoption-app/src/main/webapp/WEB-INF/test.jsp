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
<body class="text-center">
	<h1>TEST PAGE</h1>
	
	<div class="card">
	  <div class="card-header">
	    Users
	  </div>
	  <div class="card-body">
		<c:forEach items="${users }" var="users">
			<div>
			
				<br/>
				<p>${users.getUser_first_name()}</p>
				<p>${users.getUser_middle_name()}</p>
				<p>${users.getUser_last_name()}</p>
				<p>${users.getUser_email()}</p>
				<p>${users.getUser_password()}</p>
				<p>${users.getUser_phone_number()}</p>
				<p>${users.getUser_address()}</p>
				<hr/>
			</div>
		</c:forEach>
	  </div>
	</div>
	
	<div class="card">
	  <div class="card-header">
	    Pets
	  </div>
	  <div class="card-body">
	    <h5 class="card-title">Registered Pets here</h5>
	    <c:forEach items="${pets }" var="pet">
			<div>
			
				<br/>
				<p>${pet.getPet_name()}</p>
				<hr/>
			</div>
		</c:forEach>
	  </div>
	</div>
	
	
	
	
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>