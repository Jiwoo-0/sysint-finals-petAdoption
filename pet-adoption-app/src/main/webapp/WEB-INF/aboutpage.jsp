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
	<style>
		.header-color{
			background-color: #ffb48c;
		}
	</style>
</head>
<body>
	<c:if test="${loggedUser == null}">
		<jsp:include page="header.jsp"></jsp:include>
	</c:if>
	<c:if test="${loggedUser !=  null}">
		<jsp:include page="header-auth.jsp"></jsp:include>
	</c:if>
	
	<section class="about-section mt-5 text-center bg-tertiary text-white">
		<div class="container">
	        <h1 class="fw-bold">ABOUT US</h1>
	        <p>Welcome to a community dedicated to pets and their well-being! We’re passionate about connecting animals in need with loving families and providing top-quality products that make a difference in their lives. Our mission is simple: to support happy, healthy pets by offering a variety of resources, from adoption support to handpicked essentials. Join us as we create a brighter, more compassionate world for pets and the people who care for them.</p>
		</div>
    </section>

    <section class="mission-section">
	    <div class="container text-section">
	        <div class="row justify-content-center align-items-center mb-5">
	            <div class="col-md-6">
	                <h2 class="section-heading">Our Mission</h2>
	                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
	                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
	            </div>
	            <div class="col-md-6 text-center">
	                <img src="https://media.istockphoto.com/id/1350689855/photo/portrait-of-an-asian-man-holding-a-young-dog.jpg?s=612x612&w=0&k=20&c=Iw0OedGHrDViIM_6MipHmPLlo83O59by-LGcsDPyzwU=" alt="Man with Dog" class="img-fluid rounded">
	            </div>
	        </div>
	        <div class="row align-items-center">
	            <div class="col-md-6 text-center">
	                <img src="https://hips.hearstapps.com/hmg-prod/images/happy-boy-with-a-beautiful-dog-royalty-free-image-1719467988.jpg?crop=0.88931xw:1xh;center,top&resize=1200:*" alt="Kids with Dog" class="img-fluid rounded">
	            </div>
	            <div class="col-md-6">
	                <h2 class="section-heading">Our Vision</h2>
	                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
	                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
	            </div>
	        </div>
	    </div>
    </section>

    <section class="goals-section">
    	<div class="container">
	        <h2 class="section-heading text-center">Our Goals</h2>
	        <div class="row gy-3 p-3 text-center">
	            <div class="col-md-4 ">
	            	<div class="border rounded shadow card-animate">
		                <h2 class="fw-bold">2</h2>
		                <h4>Offer High-Quality, Affordable Pet Products</h4>
	            	</div>
	            </div>
	            <div class="col-md-4 ">
	            	<div class="container border rounded shadow card-animate p-3">
		                <h1 class="fw-bold">1</h1>
		                <h4>Build a Thriving Pet-Loving Community</h4>
	            	</div>
	            </div>
	            <div class="col-md-4 ">
	            	<div class="container  border rounded shadow card-animate">
		                <h2 class="fw-bold">3</h2>
		                <h4>Promote Responsible Pet Ownership</h4>
	            	
	            	</div>
	            </div>
	        </div>
    	
    	</div>
    </section>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>