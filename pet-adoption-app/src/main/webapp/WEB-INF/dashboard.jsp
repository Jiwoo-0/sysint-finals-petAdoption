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
	<Style>
		.header-color{
			background-color: white;
		}
		
		section{
			padding: 40px 0;
		}
		
	</Style>
</head>
<body>
	<jsp:include page="header-auth.jsp"></jsp:include>
	
	<section id="hero-section" class="mt-5">
		<div class="container">
			<div class="row g-2">
				<div class="col-md-1"></div>
				<div class="col-md-11">
					<h1 class="fc-primary title-primary fw-bold"><span class="text-decoration-underline">ADOP</span>T</h1>
				</div>
				<div class="col-md-12">
					<div id="carouselPageIndicators" class="carousel slide" data-bs-ride="carousel">
						<div class="carousel-indicators">
						    <button type="button" data-bs-target="#carouselPageIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
						    <button type="button" data-bs-target="#carouselPageIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselPageIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
						</div>
					  	<div class="carousel-inner">
					    	<div class="carousel-item active">
					      		<img src="https://www.designi.com.br/images/preview/12539470.jpg" class="d-block w-100 rounded" alt="banner1">
					    	</div>
						    <div class="carousel-item">
						      	<img src="https://img.freepik.com/free-vector/hand-drawn-pet-shop-facebook-cover-template_23-2150383109.jpg" class="d-block w-100 rounded" alt="banner2">
						    </div>
						    <div class="carousel-item">
						      	<img src="https://marketplace.canva.com/EAGDaAmbQyw/5/0/1600w/canva-purple-gradient-pet-supplies-facebook-cover-9lu3hMI88BE.jpg" class="d-block w-100 rounded" alt="banner3">
						    </div>
					  	</div>
					  	<button class="carousel-control-prev" type="button" data-bs-target="#carouselPageIndicators" data-bs-slide="prev">
					    	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    	<span class="visually-hidden">Previous</span>
					  	</button>
					  	<button class="carousel-control-next" type="button" data-bs-target="#carouselPageIndicators" data-bs-slide="next">
					    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
					    	<span class="visually-hidden">Next</span>
					  	</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section id="pet-section">
	
	</section>
	
	<div class="row row-cols-4 my-5 gy-4 align-items-center justify-content-center">
    			<!-- pet 1 -->
    			<div class="col-8 col-lg-4 col-xl-3">
    				<div class="card text-center card-animate ">
    					<img src="/assets/images/pets/winter.jpg" class="card-img-top" alt="pet image">
    					<div class="card-body text-ceter py-4">
    						<h4 class="card-title">Winter, 8</h4>
    						<p class="lead card-subtitle text-truncate">Non-chalant pero laging gutom</p>
    						<a class="btn btn-outline-primary btn-lg mt-3">Adopt this pet</a>
    					</div>
    				</div>
    			</div>
    			
    			<!-- pet 2 -->
    			<div class="col-8 col-lg-4 col-xl-3">
    				<div class="card text-center card-animate ">
    					<img src="/assets/images/pets/belle.jpg" class="card-img-top" alt="pet image">
    					<div class="card-body text-ceter py-4">
    						<h4 class="card-title">Belle, 7mo</h4>
    						<p class="lead card-subtitle text-truncate">Small but terrible</p>
    						<a class="btn btn-outline-primary btn-lg mt-3">Adopt this pet</a>
    					</div>
    				</div>
    			</div>
    			
    			<!-- pet 3 -->
    			<div class="col-8 col-lg-4 col-xl-3 h-100">
    				<div class="card text-center card-animate">
    					<img src="/assets/images/pets/kitkat.jpg" class="card-img-top" alt="pet image">
    					<div class="card-body text-ceter py-4">
    						<h4 class="card-title">Kitkat, 10</h4>
    						<p class="lead card-subtitle text-truncate">Very demure</p>
    						<a class="btn btn-outline-primary btn-lg mt-3">Adopt this pet</a>
    					</div>
    				</div>
    			</div>
    			
    			<!-- pet 4 -->
    			<div class="col-8 col-lg-4 col-xl-3">
    				<div class="card text-center card-animate">
    					<img src="/assets/images/pets/oreo.jpg" class="card-img-top" alt="pet image">
    					<div class="card-body text-ceter py-4">
    						<h4 class="card-title">Oreo, 4</h4>
    						<p class="lead card-subtitle text-truncate">Beagle daw ako</p>
    						<a class="btn btn-outline-primary btn-lg mt-3">Adopt this pet</a>
    					</div>
    				</div>
    			</div>
    			
    			<!-- pet 5 -->
    			<div class="col-8 col-lg-4 col-xl-3">
    				<div class="card text-center card-animate">
    					<img src="/assets/images/pets/potchi.jpg" class="card-img-top" alt="pet image">
    					<div class="card-body text-ceter py-4">
    						<h4 class="card-title">Potchi, 2</h4>
    						<p class="lead card-subtitle text-truncate">4-in-1 breed Shitzu na mahaba</p>
    						<a class="btn btn-outline-primary btn-lg mt-3">Adopt this pet</a>
    					</div>
    				</div>
    			</div>
    			
    			<!-- pet 5 -->
    			<div class="col-8 col-lg-4 col-xl-3">
    				<div class="card text-center card-animate">
    					<img src="/assets/images/pets/icy.jpg" class="card-img-top" alt="pet image">
    					<div class="card-body text-ceter py-4">
    						<h4 class="card-title">Icy, 2</h4>
    						<p class="lead card-subtitle text-truncate">meow meow meow meow</p>
    						<a class="btn btn-outline-primary btn-lg mt-3">Adopt this pet</a>
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