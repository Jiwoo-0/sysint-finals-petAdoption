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
		section{
			padding: 60px 0 ;
		}
	</Style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section class="home-hero-section">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-md-5 text-center text-md-start">
                    <h1 class="title-primary fw-bold">Looking for Adoption & Quality Items for your Pets?</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    <a href="#" class="btn btn-lg btn-warning text-white">Learn More</a>
                </div>
                <div class="col-md-5 text-center d-none d-md-block">
                    <img src="https://www.givethemten.org/wp-content/uploads/2022/12/photo_cat_found1.png" alt="Cat" class="img-fluid">
                </div>
            </div>
        </div>
    </section>
    
    <section class="partner-section text-center">
    	<div class="container ">
    		<h2 class="title-primary"><strong>Our Partners</strong></h2>
    		<div class="row align-items-center justify-content-center">
    			<div class="col-6 col-md-2"><img src="https://lincolnwayvet.com/wp-content/uploads/2018/03/lincolnway-logo-purple-e1647351265228.png" class="img-fluid"/></div>
    			<div class="col-6 col-md-2"><img src="https://puyallupvalleyvet.com/wp-content/uploads/2021/11/cropped-1210371_Puyallup-Valley-Veterinary-Clinic_v1_102921.png" class="img-fluid"/></div>
    			<div class="col-6 col-md-2"><img src="https://salazarroadvetclinic.com/wp-content/uploads/2022/08/salazarroad_logo.png" class="img-fluid"/></div>
    			<div class="col-6 col-md-2"><img src="https://static.wixstatic.com/media/0da0d5_304db1283a1a485cacb60fb6c4774bab~mv2.png/v1/fill/w_420,h_434,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Commonwealth%20Vet%20Clinic--FINAL%20logo.png" class="img-fluid"/></div>
    			<div class="col-6 col-md-2"><img src="https://images.squarespace-cdn.com/content/v1/60c50784af99a435b9c0100e/1623895703775-8JZONZ1WM61DGRYQNLNX/logo_transparent_black_circle.png" class="img-fluid"/></div>
    		</div>
    	</div>
    </section>
    
    
    <section id="adopt" class="bg-light">
    	<div class="container-lg mt-3">
    		<div class="text-center">
    			<h2 class="fw-bold fc-secondary">BECOME A FUR-PARENT</h2>
    			<p class="lead text-muted">Fur-babies that are looking for their future <span class="fw-bold fc-primary">Fur-Parent!</span></p>
    		</div>
    		
    		
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
    	</div>
    </section>
    
    
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
</body>
</html>