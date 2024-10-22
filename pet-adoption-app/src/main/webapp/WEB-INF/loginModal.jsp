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
	
</head>
<body>

	<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	    <div class="modal-dialog modal-dialog-centered">
	        <div class="modal-content">
	            <div class="modal-body">
	                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                
	                <form action="/verify/account" method="post" >
	                	<p class="fw-bold h1 text-center my-3">Sign in to <span class="fil">Fil</span><span class="paw">Paw</span><img src="/assets/images/logo.png"/></p>
	                	<div class="p-3">
	                		<label class="form-label" for="login-email" >Email Address:</label>
	                		<input class="form-control" type="email" name="email" id="login-email" placeholder="Enter your email address here"/>
	                	</div>
	                	<div class="mb-3 p-3">
	                		<label for="login-password" class="form-label">Password:</label>
	                		<input type="password" class="form-control" name="password" id="login-password" placeholder="Enter your password here"/>
	                	</div>
	                	<div class="d-grid gap-2 p-3">
		                	<input class="btn btn-primary btn-lg" type="submit" value="submit"/>
	                	</div>
	                	<p class="text-muted text-center">Don't have an account? <a href="/account/register">Sign up</a></p>
	                </form>
	                
	            </div>
	        </div>
	    </div>
	</div>
	
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>