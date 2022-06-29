<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>	Post Job</title>
<%@include file="all_component/all_css.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_component/navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url = "login.jsp"/>
	</c:if>
	<div class="container p-2">
		<div class ="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>
						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${succMsg }</div>
							<c:remove var="succMsg"/>
						</c:if>
						<h5>Add Jobs</h5>
					</div>
					<form action="addJob" method ="post">
						<div class="form-group">
							<label>Enter Title</label><input type="text" name="title" required class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
							<label>Location</label>>
							<select name="location" class="custom-select" id="inlineFormCustomSelectPref">
								<option selected>Choose...</option>
								<option value="Lagos">Lagos</option>
								<option value="Abuja">Abuja</option>
								<option value="Portharcourt">Portharcourt</option>
								<option value="Benin">Benin</option>
								<option value="Ibadan">Ibadan</option>
								<option value="Oshogbo">Oshogbo</option>
								<option value="Uyo">Uyo</option>
								<option value="Enugu">Enugu</option>
							</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label>
								<select name="category" class="custom-select" id="inlineFormCustomSelectPref">
									<option selected>Choose...</option>
									<option value="IT">IT</option>
									<option value="Developer">Developer</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
								</select>	
							</div>
							<div class="form-group col-md4">
								<label>Status</label>
								<select class="form-control" name="status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
							<div class="form-group">
								<label>Enter Description</label>
								<textarea required rows="6" cols="" name="desc" class="form-control"></textarea>
							</div>
							<button class="btn btn-success">Publish Job</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>