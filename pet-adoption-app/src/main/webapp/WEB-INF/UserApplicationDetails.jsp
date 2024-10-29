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
<body>
	<h1>Application Details Page</h1>
	<hr/>
		<input type="hidden" value="${userdeets.getUserDetails_id()}"/>		
		<h1>Applicant: ${userinfo.getUser_first_name()}, ${userinfo.getUser_last_name()}</h1>
		<hr/>
		<h1>Q1. Are you aware of pet grooming etiquette?: ${userdeets. getQ1() }</h1>
		<h1>Q2. Are you aware of the exercising/training requirements?: ${userdeets. getQ2() }</h1>
		<h1>Q3. How will the pet be trained?: ${userdeets. getQ3() }</h1>
		<h1>Q4. Will this pet be an inside or outside pet?: ${userdeets. getQ4() }</h1>
		<h1>Q5. Is this pet being purchased as a surprise or gift for anyone? ${userdeets. getQ5() }</h1>
		<h1>Q5a. If yes, please explain ${userdeets. getQ5a() }</h1>
		<h1>Q6. Is this your first pet? ${userdeets. getQ6() }</h1>
		<h1>Q7. Do you have other pets in the home? ${userdeets. getQ7() }</h1>
		<h1>Q8. How long did your last pet live? What were the circumstances of its death? ${userdeets. getQ8() }</h1>
		<h1>Q9. Do you already have a veterinarian? ${userdeets. getQ9() }</h1>
		<h1>Q10. Type of housing: ${userdeets. getQ10() }</h1>
	
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>