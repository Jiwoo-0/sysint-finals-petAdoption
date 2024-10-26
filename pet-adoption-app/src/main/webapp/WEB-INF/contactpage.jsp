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
	<link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet" />
	<Style>
		.header-color{
			background-color: #98acbc;
		}
	</Style>
</head>
<body class="bg-contact">
	<c:if test="${loggedUser == null}">
		<jsp:include page="header.jsp"></jsp:include>
	</c:if>
	<c:if test="${loggedUser !=  null}">
		<jsp:include page="header-auth.jsp"></jsp:include>
	</c:if>
	
	<section class="contact-section bg-contact mt-5">
		<div class="container text-center">
			<h1 class="title-primary text-white fw-bold mb-4">CONTACT US</h1>
			<div class="row justify-content-center">
				<div class="col-md-5 text-center text-md-start mt-4">
					<h1 class="title-primary text-white fw-bold">Become a Partner</h1>
					<p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id hic exercitationem omnis enim inventore dicta nobis laudantium cupiditate officiis maxime eum eaque qui ipsam ratione, laborum, doloremque, perferendis nam quidem?</p>
				</div>
				<div class="col-md-5 text-center text-md-start mt-4">
					<h1 class="title-primary text-white fw-bold">Get in touch</h1>
					<p class="text-white">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam vero aliquid quos tenetur sapiente voluptatem dolor ullam dolorem error perspiciatis.</p>
					<div class="row row-cols-3">
						<div class="col-md-4 text-center text-md-start border-end">
							<p class="fw-bold text-white lead">Address</p>
							<p class="text-white">Blk X lot X, Coral Way St.</p>
						</div>
						<div class="col-md-4 text-center text-md-start border-end">
							<p class="fw-bold text-white lead">Email</p>
							<p class="text-white">Inquire@FilPaw.com</p>
						</div>
						<div class="col-md-4 text-center text-md-start border-end">
							<p class="fw-bold text-white lead">Phone Number</p>
							<p class="text-white">(+63) 915-000-0000</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="contact-partner-section">
		<div class="container">
			<h1 class="title-primary fc-primary1 fw-bold text-center">CONTACT OUR PAW-TNERS</h1>
			
			
			<!-- TO BE CONTINUES HUHUHUHUHUHUHUHUH -->
		</div>
	</section>
	
	
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>