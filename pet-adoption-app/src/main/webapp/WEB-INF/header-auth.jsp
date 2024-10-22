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
	<Style>
		Section{
			padding: 60px 0 ;
		}
	</Style>
</head>
<body>
	 
	<nav class="navbar navbar-expand-lg navbar-light fixed-top">
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
                    <li class="nav-item d-md-none"><a class="nav-link" href="#">Profile</a></li>
                    <li class="nav-item d-md-none"><a class="nav-link" href="#">Logout</a></li>
                    <li class="nav-item ms-2 d-none d-md-inline"><a class="btn btn-outline-primary" href="#" data-bs-toggle="modal" data-bs-target="#profileModal">Profile</a></li>
                    <li class="nav-item ms-2 d-none d-md-inline"><a class="btn btn-outline-primary" href="#">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <!-- <jsp:include page="loginModal.jsp"></jsp:include>  -->
    
	
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>