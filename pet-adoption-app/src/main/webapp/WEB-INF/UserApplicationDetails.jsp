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
		section{
			padding: 45px 0;
		}
	</style>
</head>
<body>
	<jsp:include page="header-auth.jsp"></jsp:include>
	
	<section class="application-section mt-5 ">
		<div class="container">
			<div class="row g-3 p-3">
				<div class="col-md-12">
					<a href="/admin/dashboard" class="btn btn-primary"> Go back to dashboard</a>
				</div>
				<div class="col-md-12">
					<div class="card mx-auto shadow">
						  <div class="card-body">
							    <h3 class="card-title text-center fw-bold">${userinfo.getUser_first_name()} ${userinfo.getUser_last_name() } Application Form</h3>
							    <form:form action="/register/application" method="post" modelAttribute="userdeets">
							    	<form:input path="userDetails_id" type="hidden" value="${userdeets.userDetails_id }"/>
							    	<input name="app_id" type="hidden" value="${application.application_id }"/>
							    	<div class="accordion" id="accordionForm">
							    		<div class="accordion-item">
							    			<h2 class="accordion-header">
							    				<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#form1" aria-expanded="true" aria-controls="form1">Pet Preference</button>
							    			</h2>
							    			<div id="form1" class="accordion-collapse collapse show" data-bs-parent="accordionForm"> 
							    				<div class="accordion-body row g-3 p-3">
							    					<div class="col-md-6">
											    		<form:label path="q1">Are you aware of pet grooming etiquette? </form:label>
											    	</div>
											    	<div class="col-md-6">
											    		<div class="input-group flex-nowrap">
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q1" class="form-check-input" name="q1" value="yes" />
												    			<form:label path="q1"> Yes</form:label>
											    			</div>
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q1" class="form-check-input" name="q1" value="no"/>
												    			<form:label path="q1" class="form-check-label"> No</form:label>
											    			</div>
											    		</div>
											    	</div>
											    	<div class="col-md-6">
											    		<form:label path="q2">Are you aware of the exercising/training requirements? </form:label>
											    	</div>
											    	<div class="col-md-6">
											    		<div class="input-group flex-nowrap">
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q2" class="form-check-input" name="q2" value="yes"/>
												    			<form:label path="q2"> Yes</form:label>
											    			</div>
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q2" class="form-check-input" name="q2" value="no"/>
												    			<form:label path="q2" class="form-check-label"> No</form:label>
											    			</div>
											    		</div>
											    	</div>
											    	<div class="col-md-6">
											    		<form:label path="q3">How will the pet be trained? </form:label>
											    	</div>
											    	<div class="col-md-6">
											    		<form:select path="q3" class="form-select">
											    			<form:option class="dropdown-item" value="">Please select</form:option>
											    			<form:option class="dropdown-item" value="We will probably train the pet ourselves">We will probably train the pet ourselves</form:option>
											    			<form:option class="dropdown-item" value="Pet classes">Pet classes</form:option>
											    			<form:option class="dropdown-item" value="Professional trainer">Professional trainer</form:option>
											    		</form:select>
											    	</div>
											    	<div class="col-md-6">
											    		<form:label path="q4">Will this pet be an inside or outside pet? </form:label>
											    	</div>
											    	<div class="col-md-6">
											    		<form:select path="q4" class="form-select">
											    			<form:option class="dropdown-item" value="">Please select</form:option>
											    			<form:option class="dropdown-item" value="Mostly indoors">Mostly indoors</form:option>
											    			<form:option class="dropdown-item" value="Mostly outdoors">Mostly outdoors</form:option>
											    			<form:option class="dropdown-item" value="Both">Both</form:option>
											    		</form:select>
											    	</div>
											    	<div class="col-md-6">
											    		<form:label path="q5">Is this pet being purchased as a surprise or gift for anyone? </form:label>
											    	</div>
											    	<div class="col-md-6">
											    		<div class="input-group flex-nowrap">
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q5" class="form-check-input" name="q5" value="yes"/>
												    			<form:label path="q5"> Yes</form:label>
											    			</div>
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q5" class="form-check-input" name="q5" value="no"/>
												    			<form:label path="q5" class="form-check-label"> No</form:label>
											    			</div>
											    		</div>
											    		<form:label path="q5a" class="mt-3">If yes, please explain</form:label>
												    	<form:textarea path="q5a" rows="3" class="form-control"></form:textarea>
											    	</div>
							    				</div>
							    			</div>
							    		</div>
							    	</div>
								    <div class="accordion" id="accordionForm">
							    		<div class="accordion-item">
							    			<h2 class="accordion-header">
							    				<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#form2" aria-expanded="false" aria-controls="form2">About Pet's new family</button>
							    			</h2>
							    			<div id="form2" class="accordion-collapse collapse show" data-bs-parent="#accordionForm"> 
							    				<div class="accordion-body row g-3 p-3">
							    					<div class="col-md-6">
							    						<form:label path="q6">Is this your first pet?</form:label>
							    					</div>
							    					<div class="col-md-6">
							    						<div class="input-group flex-nowrap">
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q6" class="form-check-input" name="q6" value="yes"/>
												    			<form:label path="q6"> Yes</form:label>
											    			</div>
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q6" class="form-check-input" name="q6" value="no"/>
												    			<form:label path="q6" class="form-check-label"> No</form:label>
											    			</div>
											    		</div>
							    					</div>
							    					<div class="col-md-6">
							    						<form:label path="q7">Do you have other pets in the home?</form:label>
							    					</div>
							    					<div class="col-md-6">
							    						<div class="input-group flex-nowrap">
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q7" class="form-check-input" name="q7" value="yes"/>
												    			<form:label path="q7"> Yes</form:label>
											    			</div>
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q7" class="form-check-input" name="q7" value="no"/>
												    			<form:label path="q7" class="form-check-label"> No</form:label>
											    			</div>
											    		</div>
							    					</div>
							    					<div class="col-md-6">
							    						<form:label path="q8">How long did your last pet live? What were the circumstances of its death? </form:label>
							    					</div>
							    					<div class="col-md-6">
							    						<form:textarea path="q8" class="form-control" rows="3"></form:textarea>
							    					</div>
							    					<div class="col-md-6">
							    						<form:label path="q9">Do you already have a veterinarian?</form:label>
							    					</div>
							    					<div class="col-md-6">
							    						<div class="input-group flex-nowrap">
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q9" class="form-check-input" name="q9" value="yes"/>
												    			<form:label path="q9"> Yes</form:label>
											    			</div>
											    			<div class="form-check form-check-inline">
												    			<form:radiobutton path="q9" class="form-check-input" name="q9" value="no"/>
												    			<form:label path="q9" class="form-check-label"> No</form:label>
											    			</div>
											    		</div>
							    					</div>
							    					<div class="col-md-6">
							    						<form:label path="q10">Type of housing</form:label>
							    					</div>
							    					<div class="col-md-6">
							    						<form:select path="q10" class="form-select">
											    			<form:option class="dropdown-item" value="">Please select</form:option>
											    			<form:option class="dropdown-item" value="Apartment">Apartment</form:option>
											    			<form:option class="dropdown-item" value="Condo">Condo</form:option>
											    			<form:option class="dropdown-item" value="Single Family Residence">Single Family Residence</form:option>
											    			<form:option class="dropdown-item" value="Other">Other</form:option>
											    		</form:select>
							    					</div>
							    					
							    				</div>
							    			</div>
							    		</div>
							    	</div>
							    	<div class="row p-3 g-3">
							    		<div class="col-md-6 d-grid mt-3">
											<a href="/admin/application/reject/${application.application_id}" class="btn btn-danger" onclick="return(confirm('Are you sure you want to reject this application?'))">Reject Application</a>
								    	</div>
								    	<div class="col-md-6 d-grid mt-3">
											<a href="/admin/application/approve/${application.application_id}" class="btn btn-primary">Approve Application</a>
								    	</div>
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