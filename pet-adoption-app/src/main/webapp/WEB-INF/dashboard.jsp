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
	
	<section class="pet-section bg-contact">
		<div class="container-lg">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-11">
					<h2 class="text-white title-primary fw-bold"><span class="text-decoration-underline">PETS YOU MIGHT WANT TO AD</span>OPT</h2>
				</div>
		    </div>
			<div class="row row-cols-4 my-5 gy-4 align-items-center justify-content-center">
				<c:forEach items="${pets }" var="pet">
			    	<div class="col-8 col-lg-4 col-xl-3">
			    		<div class="card text-center card-animate ">
			    			<img src="${pet.getPet_img() }" class="card-img-top" alt="pet image">
			    			<div class="card-body text-ceter py-4">
			    				<h4 class="card-title">${pet.getPet_name() }, ${pet.getPet_age()}</h4>
			    				<p class="lead card-subtitle text-truncate">${pet.getDescription() }</p>
			    				<a class="btn btn-outline-primary btn-lg mt-3" data-bs-toggle="modal" data-bs-target="#adoptFormModal${pet.getPet_id()}">Adopt this pet</a>
			    			</div>
			    		</div>
			    	</div>
				</c:forEach>
			</div>
		</div>
	</section>
	
	<c:forEach items="${pets }" var="pet">
		<div class="modal fade" id="adoptFormModal${pet.getPet_id()}" aria-hidden="true" tabindex="-1">
			<div class="modal-dialog modal-xl modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body">
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
						<div class="row text-center g-3 p-3">
							<div class="col-md-6 justify-content-center align-items-center">
								<img src="${pet.getPet_img() }" class="img-fluid card-img-modal rounded shadow"/>
								<h2 class="text-center mt-3">${pet.getPet_name() }</h2>
								<p class="card-subtitle lead">${pet.getDescription() }</p>
							</div>
							<div class="col-md-6">
								<form:form action="/adopt/pet" method="post" modelAttribute="adoptPet" class="row g-3 p-3">
									<form:input path="userapplicant" type="hidden" value="${loggedUser.getUser_first_name()}"/>
									<form:input path="user_id" type="hidden" value="${loggedUser.getUser_id()}"/>
									<form:input path="pet_id" type="hidden" value="${pet.getPet_id()}"/>
									<form:input path="application_status" type="hidden" value="pending"/>
									<div class="text-start p-1">
										<h4 class="fw-bold text-center mb-2">Details</h4>	
										<p>Breed: ${pet.breed }</p>
										<p>Age: ${pet.pet_age }</p>
										<p>Gender: ${pet.pet_gender }</p>
										<p>Weight: ${pet.pet_weight}</p>
										<p>Height: ${pet.pet_height}</p>
										<p>Is neutered: ${pet.neutured_status}</p>
										<p>Medical History: ${pet.medical_history}</p>
									</div>
									<button type="submit" class="btn btn-primary btn-lg">Adopt this pet</button>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>