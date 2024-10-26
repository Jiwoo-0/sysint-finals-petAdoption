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
	<Link rel="stylesheet" href="/assets/css/con-header.css"/>
	<Link rel="stylesheet" href="/assets/css/body.css"/>
	
</head>
<body>
	<c:if test="${loggedUser == null}">
		<jsp:include page="header.jsp"></jsp:include>
	</c:if>
	<c:if test="${loggedUser !=  null}">
		<jsp:include page="header-auth.jsp"></jsp:include>
	</c:if>
	
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>