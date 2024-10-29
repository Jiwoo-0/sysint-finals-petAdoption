<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

	 
	<nav class="navbar navbar-expand-lg navbar-light fixed-top header-color">
        <div class="container">
            <a class="navbar-brand mb-0 fw-bold h1" href="#"><span class="fil">Fil</span><span class="paw">Paw</span><img src="/assets/images/logo.png"/></a>
            
            <!-- Toggle button for mobile nav -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main-nav" aria-controls="main-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <!-- navbar links -->
            <div class="collapse navbar-collapse justify-content-end" id="main-nav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="/home#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/dashboard">Adopt</a></li>
                    <li class="nav-item"><a class="nav-link" href="/home/about-us">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="/home/contact-us">Contact Us</a></li>
                    <li class="nav-item d-md-none"><a class="nav-link" href="#">Profile</a></li>
                    <li class="nav-item d-md-none"><a class="nav-link" href="#">Logout</a></li>
                    <li class="nav-item ms-2 d-none d-md-inline"><a class="btn btn-outline-primary align-items-center" href="" data-bs-toggle="modal" data-bs-target="#createPetModal"><ion-icon name="add-circle-outline" class="me-2"></ion-icon>Add A Pet</a></li>
                    <li class="nav-item ms-2 d-none d-md-inline"><a class="btn btn-outline-primary" href="" data-bs-toggle="modal" data-bs-target="#profileModal">Profile</a></li>
                    <li class="nav-item ms-2 d-none d-md-inline"><a class="btn btn-outline-primary" href="/logout">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="modal fade" id="createPetModal" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered">
	    	<div class="modal-content">
	      		<div class="modal-body">
	        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	           		<form:form action="/pet/register" method="post" class="row g-3 p-3" modelAttribute="newPet" enctype="multipart/form-data">
	           			<p class="fw-bold h1 text-center my-3">Add a pet</p>
	                	<div class="col-md-6">
	                		<form:label path="pet_name">Pet Name: </form:label>
	                		<form:errors path="pet_name"></form:errors>
	                		<form:input path="pet_name" type="text" class="form-control"/>
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
	                		<form:input path="pet_age" type="number" class="form-control"/>
	                	</div>
	                	<div class="col-md-4">
	                		<form:label path="pet_weight">Pet Weight: </form:label>
	                		<form:errors path="pet_weight"></form:errors>
	                		<form:input path="pet_weight" type="text" class="form-control"/>
	                	</div>
	                	<div class="col-md-4">
	                		<form:label path="pet_height">Pet Height: </form:label>
	                		<form:errors path="pet_height"></form:errors>
	                		<div class="input-group felx-nowrap">
								<form:input path="pet_height" type="text" class="form-control"/>
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
								<form:input path="pet_img" type="text" class="form-control"/>
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
	                		<form:textarea path="medical_history" class="form-control" rows="3"/>
	                	</div>
	                	<div class="col-md-12">
	                		<form:label path="description">Description:</form:label>
	                		<form:errors path="description"></form:errors>
	                		<form:textarea path="description" class="form-control" rows="3"/>
	                	</div>
	                	<div class="d-grid gap-2">
							<input type="submit" value="Register Pet" class="btn btn-primary btn-lg"/>
						</div>
					</form:form>
	      		</div>
	    	</div>
	  	</div>
	</div>
