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
<body class="bg-primary1">

	<jsp:include page="header.jsp"></jsp:include>
	
	<section class="application-section mt-5">
		<div class="container">
			<div class="row g-3 p-3">
				<div class="col-md-6">
					<img src="https://i.pinimg.com/originals/21/ab/92/21ab92d1578f53ec9ec4409c74228aa1.png" class="img-fluid"/>
				</div>
				<div class="col-md-6">
					<div class="card mx-auto shadow">
						  <div class="card-body">
							    <h3 class="card-title text-center fw-bold">Application Form</h3>
							    <form:form action="/register/application" method="post" class="row g-3 p-3" modelAttribute="userApplication">
								    <h6 class="card-subtitle text-body-secondary text-center">Pet preference</h6>
							    	<div class="col-md-6">
							    		<label>Are you aware of grooming etiquette? </label>
							    	</div>
							    	<div class="col-md-6">
							    		<input type="text" class="form-control"/>
							    	</div>
							    	<div class="col-md-6">
							    		<label>Are you aware of the exercising/training requirements? </label>
							    	</div>
							    	<div class="col-md-6">
							    		<input type="text" class="form-control"/>
							    	</div>
							    	<div class="col-md-6">
							    		<label>How will the puppy be trained? </label>
							    	</div>
							    	<div class="col-md-6">
							    		<input type="text" class="form-control"/>
							    	</div>
								    <div class="d-grid mt-3">
								    	<button type="submit" class="btn btn-primary">Submit application</button>
								    </div>
							    </form:form>
						  </div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>