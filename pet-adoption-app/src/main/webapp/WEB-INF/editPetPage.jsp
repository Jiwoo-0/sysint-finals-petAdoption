<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<form:form action="/pet/update" method="post" class="row g-3 p-3" modelAttribute="updatePet" enctype="multipart/form-data">
		           			<p class="fw-bold h1 text-center my-3">Edit pet</p>
		           			<form:input path="pet_id" type="hidden" value="${pet.pet_id }"/>
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