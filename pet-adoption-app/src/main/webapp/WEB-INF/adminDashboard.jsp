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
			background-color: #cbcbcb;
		}
	</style>
</head>
<body>
	<jsp:include page="header-auth.jsp"></jsp:include>
    
    <section class="user-section mt-5">
    	<div class="container">
    		<div class="card" >
			  	<div class="card-body table-responsive">
				    <h5 class="card-title">User list</h5>
				    <table class="table table-sm table-striped table-hover ">
		    		<thead>
						<tr>
							<th scope="col">#</th>
						    <th scope="col">Name</th>
						    <th scope="col">Email</th>
						    <th scope="col">Password</th>
						    <th scope="col">Phone Number</th>
						    <th scope="col">Address</th>
						    <th scope="col">Actions</th>
					   </tr>
					</thead>
					<tbody>
						<c:forEach items="${users}" var="user">
						  	<tr>
								<th scope="row">${user.user_id}</th>
							    <td>${user.user_first_name } ${user.user_middle_name } ${user.user_last_name }</td>
							    <td>${user.user_email }</td>
							    <td>${user.user_password }</td>
							    <td>${user.user_phone_number}</td>
							    <td>${user.user_address}</td>
							    <td colspan="3">
							    	<a href="" class="btn btn-warning" data-bs-target="#editUserModal${user.user_id }" data-bs-toggle="modal">Edit</a>
							    	<a href="/user/delete/${user.user_id }" class="btn btn-danger" onclick="return(confirm('Are you sure you want to delete user ${user.user_id}'))">Delete</a>
							    </td>
						    </tr>
				  		</c:forEach>		    
					</tbody>
		    	</table>
			  	</div>
			</div>
    	</div>
    </section>
    
    <section class="user-section">
    	<div class="container">
    		<div class="card" >
			  	<div class="card-body table-responsive">
				    <h5 class="card-title">Pet list</h5>
				    <table class="table table-sm table-striped table-hover ">
		    		<thead>
						<tr>
							<th scope="col">#</th>
						    <th scope="col">Pet Name</th>
						    <th scope="col">Breed</th>
						    <th scope="col">Age</th>
						    <th scope="col">Gender</th>
						    <th scope="col">Weight</th>
						    <th scope="col">Height</th>
						    <th scope="col">Neutered Status</th>
						    <th scope="col">Medical History</th>
						    <th scope="col">Description</th>
						    <th scope="col">Action</th>
					   </tr>
					</thead>
					<tbody>
						<c:forEach items="${pets}" var="pet">
						  	<tr>
								<th scope="row">${pet.pet_id}</th>
							    <td>${pet.pet_name}</td>
							    <td>${pet.breed}</td>
							    <td>${pet.pet_age}</td>
							    <td>${pet.pet_gender}</td>
							    <td>${pet.pet_weight}</td>
							    <td>${pet.pet_height}</td>
							    <td>${pet.neutured_status}</td>
							    <td>${pet.medical_history}</td>
							    <td>${pet.description}</td>
								<td>
									<a href="" class="btn btn-warning" data-bs-target="#editPetModal${pet.pet_id }" 
									   data-bs-toggle="modal">
									   Edit
									</a>
									<a href="/pet/delete/${pet.pet_id }" 
									   class="btn btn-danger" onclick="return(confirm('Are you sure you want to delete pet ${pet.pet_id}'))">
									   Delete
									</a>
								</td>
						    </tr>
				  		</c:forEach>		    
					</tbody>
		    	</table>
			  	</div>
			</div>
    	</div>
    </section>
    
    <section class="application-section">
    	<div class="container">
    		<div>
    			<div class="card" >
				  	<div class="card-body table-responsive">
					    <h5 class="card-title">Application list</h5>
					    <table class="table table-sm table-striped table-hover ">
			    		<thead>
							<tr>
								<th scope="col">#</th>
							    <th scope="col">user</th>
							    <th scope="col">adopting pet</th>
							    <!-- <th scope="col">action</th> -->
						   </tr>
						</thead>
						<tbody>
					  		<c:forEach items="${applications }" var="ap">
					  			<tr>
					  				<c:if test="${ap.application_status == 'pending' }">
						  				<td>${ap.application_id }</td>
						  				<td><a href="/admin/application/${ap.user_id}/${ap.application_id}">${ap.userapplicant }</a></td>
						  				<td>${ap.pet_id }</td>
					  				</c:if>
					  			</tr>
					  		</c:forEach>
						</tbody>
			    	</table>
				  	</div>
				</div>
    		</div>
    	</div>
    </section>
    
    <jsp:include page="adminModals.jsp"></jsp:include>
	
	
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>