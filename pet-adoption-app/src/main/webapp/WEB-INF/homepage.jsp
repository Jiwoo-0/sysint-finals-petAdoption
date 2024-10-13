<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Title</title>
	
	<!-- CSS -->
	<Link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"/>
	<Link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css"/>
	<Style>
		section{
			padding: 60px 0 ;
		}
	</Style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section class="hero-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h1>Looking for Adoption & Quality Items for your Pets?</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    <a href="#" class="btn btn-warning">Learn More</a>
                </div>
                <div class="col-md-6 text-center">
                    <img src="https://www.givethemten.org/wp-content/uploads/2022/12/photo_cat_found1.png" alt="Cat" class="img-fluid">
                </div>
            </div>
        </div>
    </section>
	
	<!-- JS -->
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>