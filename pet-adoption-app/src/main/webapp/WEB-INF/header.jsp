<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

	 
	<nav class="navbar navbar-expand-lg navbar-light fixed-top header-color">
        <div class="container">
            <a class="navbar-brand mb-0 fw-bold h1" href="#"><span class="fil">Fil</span><span class="paw">Paw</span><img src="/assets/images/logo.png"/></a>
            
            <!-- Toggle button for mobile nav -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main-nav" aria-controls="main-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <!-- navbar links -->
            <div class="collapse navbar-collapse justify-content-end" id="main-nav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="/home#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/home#adopt">Adopt</a></li>
                    <li class="nav-item"><a class="nav-link" href="/home/about-us">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="/home/contact-us">Contact Us</a></li>
                    <li class="nav-item d-md-none"><a class="nav-link" href="#">Login</a></li>
                    <li class="nav-item ms-2 d-none d-md-inline"><button class="btn btn-primary" data-bs-target="#loginModal" data-bs-toggle="modal">Log in</button></li>
                </ul>
            </div>
        </div>
    </nav>
     
    <div class="modal fade" id="loginModal" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
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
				</form>
				<p class="text-muted text-center">Don't have an account? <a href="" data-bs-target="#registerModal" data-bs-toggle="modal">Sign up!</a></p>
	      </div>
	    </div>
	  </div>
	</div>
	<div class="modal fade" id="registerModal" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	      <div class="modal-body">
	      	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	        <form:form action="/account/register" method="post" modelAttribute="newAcc" class="row g-3 p-3">
				<p class="fw-bold h1 text-center my-3">Register to <span class="fil">Fil</span><span class="paw">Paw</span><img src="/assets/images/logo.png"/></p>
				<div class="col-md-8">
					<form:label path="user_first_name">First Name:</form:label>
					<form:errors path="user_first_name"/>
					<form:input path="user_first_name" type="text" class="form-control" name="fname"/>
				</div>
				<div class="col-md-4">
					<form:label path="user_middle_name">Middle Name:</form:label>
					<form:errors path="user_middle_name"/>
					<form:input path="user_middle_name" type="text" class="form-control" name="mname"/>
				</div>
				<div class="col-md-6">
					<form:label path="user_last_name">Last Name:</form:label>
					<form:errors path="user_last_name"/>
					<form:input path="user_last_name" type="text" class="form-control" name="lname"/>
				</div>
				<div class="col-md-6">
					<form:label path="user_phone_number">Phone Number:</form:label>
					<form:errors path="user_phone_number"/>
					<div class="input-group felx-nowrap">
						<span class="input-group-text">(+63)</span>
						<form:input path="user_phone_number" type="number" class="form-control" name="phnumber"/>
					</div>
				</div>
				<div class="col-md-6">
					<form:label path="user_email">Email:</form:label>
					<form:errors path="user_email"/>
					<form:input path="user_email" type="email" class="form-control" name="email"/>
				</div>
				<div class="col-md-6">
					<form:label path="user_password">Password:</form:label>
					<form:errors path="user_password"/>
					<form:input path="user_password" type="password" class="form-control" name="pw"/>
				</div>
				<div class="col-md-12">
					<form:label path="user_address">Address:</form:label>
					<form:errors path="user_address"/>
					<form:input path="user_address" type="text" class="form-control" name="address"/>
				</div>
				<div class="d-grid gap-2">
					<input type="submit" value="Register" class="btn btn-primary btn-lg"/>
				</div>
			</form:form>
			<p class="text-muted text-center">Already have an account? <a href="" data-bs-target="#loginModal" data-bs-toggle="modal">Log in!</a></p>
	      </div>
	    </div>
	  </div>
	</div>