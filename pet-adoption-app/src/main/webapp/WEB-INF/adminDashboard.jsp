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
							    <td colspan="3"><a href="" class="btn btn-warning" data-bs-target="#editUserModal${user.user_id }" data-bs-toggle="modal">Edit</a> <a href="/user/delete/${user.user_id }" class="btn btn-danger">Delete</a></td>
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
					<!--  		<td><a href="" class="btn btn-warning" data-bs-target="#editPetModal${pet.pet_id }" data-bs-toggle="modal">Edit</a> <a href="/pet/delete/${pet.pet_id }" class="btn btn-danger">Delete</a></td>-->
							    <td><a href="/pet/update/${pet.pet_id }" class="btn btn-warning">Edit</a> <a href="/pet/delete/${pet.pet_id }" class="btn btn-danger">Delete</a></td>
						    </tr>
				  		</c:forEach>		    
					</tbody>
		    	</table>
			  	</div>
			</div>
    	</div>
    </section>
    
    <c:forEach items="${users }" var="user">
    	<div class="modal fade" id="editUserModal${user.user_id }" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
		    	<div class="modal-content">
			      	<div class="modal-body">
			      		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			        	<form:form action="/account/update" method="post" modelAttribute="updateAcc" class="row g-3 p-3">
			        		<form:input path="user_id" type="hidden" value="${user.user_id }"/>
							<div class="col-md-8">
								<form:label path="user_first_name">First Name:</form:label>
								<form:errors path="user_first_name"/>
								<form:input path="user_first_name" type="text" class="form-control" name="fname" value="${user.user_first_name }"/>
							</div>
							<div class="col-md-4">
								<form:label path="user_middle_name">Middle Name:</form:label>
								<form:errors path="user_middle_name"/>
								<form:input path="user_middle_name" type="text" class="form-control" name="mname" value="${user.user_middle_name }"/>
							</div>
							<div class="col-md-6">
								<form:label path="user_last_name">Last Name:</form:label>
								<form:errors path="user_last_name"/>
								<form:input path="user_last_name" type="text" class="form-control" name="lname" value="${user.user_last_name }"/>
							</div>
							<div class="col-md-6">
								<form:label path="user_phone_number">Phone Number:</form:label>
								<form:errors path="user_phone_number"/>
								<div class="input-group felx-nowrap">
									<span class="input-group-text">(+63)</span>
									<form:input path="user_phone_number" type="number" class="form-control" name="phnumber" value="${user.user_phone_number }"/>
								</div>
							</div>
							<div class="col-md-6">
								<form:label path="user_email">Email:</form:label>
								<form:errors path="user_email"/>
								<form:input path="user_email" type="email" class="form-control" name="email" value="${user.user_email }"/>
							</div>
							<div class="col-md-6">
								<form:label path="user_password">Password:</form:label>
								<form:errors path="user_password"/>
								<form:input path="user_password" type="password" class="form-control" name="pw" value="${user.user_password }"/>
							</div>
							<div class="col-md-12">
								<form:label path="user_address">Address:</form:label>
								<form:errors path="user_address"/>
								<form:input path="user_address" type="text" class="form-control" name="address" value="${user.user_address }"/>
							</div>
							<div class="d-grid gap-2">
								<input type="submit" value="Register" class="btn btn-primary btn-lg"/>
							</div>
						</form:form>
			      	</div>
				</div>
			</div>
		</div>
    </c:forEach>
    
    <c:forEach items="${pets }" var="pet">
    	<div class="modal fade" id="editPetModal${pet.pet_id }" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
			<div class="modal-dialog modal-dialog-centered">
		    	<div class="modal-content">
		      		<div class="modal-body">
		        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		           		<form:form action="/pet/update" method="post" class="row g-3 p-3" modelAttribute="updatePet" enctype="multipart/form-data">
		           			<p class="fw-bold h1 text-center my-3">Edit pet</p>
		           			<form:input path="pet_id" type="hidden" value="${pet.pet_id }"/>
		                	<div class="col-md-6">
		                		<form:label path="pet_name">Pet Name: </form:label>
		                		<form:errors path="pet_name"></form:errors>
		                		<form:input path="pet_name" type="text" class="form-control" value="${pet.pet_name }"/>
		                	</div>
		                	<div class="col-md-3">
		                		<form:label path="breed">Species: </form:label>
		                		<form:errors path="breed"></form:errors>
		                		<form:select path="breed" class="form-select">
		                			<option class="dropdown-item" value=""></option>
		                			<option class="dropdown-item" value="dog">Dog</option>
		                			<option class="dropdown-item" value="cat">Cat</option>
		                		</form:select>
		                	</div>
		                	<div class="col-md-3">
		                		<form:label path="pet_age">Age: </form:label>
		                		<form:errors path="pet_age"></form:errors>
		                		<form:input path="pet_age" type="number" class="form-control" value="${pet.pet_age }"/>
		                	</div>
		                	<div class="col-md-4">
		                		<form:label path="pet_weight">Pet Weight: </form:label>
		                		<form:errors path="pet_weight"></form:errors>
		                		<form:input path="pet_weight" type="text" class="form-control" value="${pet.pet_weight }"/>
		                	</div>
		                	<div class="col-md-4">
		                		<form:label path="pet_height">Pet Height: </form:label>
		                		<form:errors path="pet_height"></form:errors>
		                		<div class="input-group felx-nowrap">
									<form:input path="pet_height" type="text" class="form-control" value="${pet.pet_height }"/>
									<span class="input-group-text">cm</span>
								</div>
		                	</div>
		                	<div class="col-md-4">
		                		<form:label path="pet_gender">Gender:</form:label>
		                		<form:errors  path="pet_gender"></form:errors>
		                		<div class="input-group flex-nowrap">
			                		<div class="form-check form-check-inline">
									  	<form:radiobutton path="pet_gender" class="form-check-input" name="pet_gender" id="inlineRadio1" value="male" />
									  	<label class="form-check-label" for="inlineRadio1">Male</label>
									</div>
									<div class="form-check form-check-inline">
									  	<form:radiobutton path="pet_gender" class="form-check-input" name="pet_gender" id="inlineRadio2" value="female"/>
									  	<label class="form-check-label" for="inlineRadio2">Female</label>
									</div>
		                		</div>
		                	</div>
		                	<div class="col-md-12">
		                		<form:label path="pet_img">Upload Pet Image</form:label>
		                		<div class="input-group felx-nowrap">
									<span class="input-group-text">URL</span>
									<form:input path="pet_img" type="text" class="form-control" value="${pet.pet_img }"/>
								</div>
		                	</div>
		                	<div class="col-md-8">
		                		<form:label path="neutured_status">Is this pet neutered?</form:label>
		                		<form:errors path="neutured_status"></form:errors>
		                	</div>
		                	<div class="col-md-4">
		                		<div class="form-check form-check-inline">
									<form:radiobutton path="neutured_status" class="form-check-input" name="neutured_status" id="inlineRadio1" value="yes" />
									<label class="form-check-label" for="inlineRadio1">Yes</label>
								</div>
								<div class="form-check form-check-inline">
									<form:radiobutton path="neutured_status" class="form-check-input" name="neutured_status" id="inlineRadio2" value="no"/>
									<label class="form-check-label" for="inlineRadio2">No</label>
								</div>
		                	</div>
		                	<div class="col-md-12">
		                		<form:label path="medical_history">Medical History:</form:label>
		                		<form:errors path="medical_history"></form:errors>
		                		<form:textarea path="medical_history" class="form-control" rows="3" value="${pet.medical_history }"/>
		                	</div>
		                	<div class="col-md-12">
		                		<form:label path="description">Description:</form:label>
		                		<form:errors path="description"></form:errors>
		                		<form:textarea path="description" class="form-control" type="text" value="${pet.description }" rows="3"/>
		                		<form:input path="description" type="text" value="${pet.description }"/>
		                	</div>
		                	<div class="d-grid gap-2">
								<input type="submit" value="Register Pet" class="btn btn-primary btn-lg"/>
							</div>
						</form:form>
		      		</div>
		    	</div>
		  	</div>
		</div>
    </c:forEach>
	
	
	<!-- JS -->
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>