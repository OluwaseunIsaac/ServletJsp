<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="all_component/all_css.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="continer-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
						<i class = "fa fa-user-plus fa-2x" aria-hidden="true"></i>
						<h5>Login Page</h5>
						</div>
						<c:if test="${not empty succMsg }">
							<h4 class ="text-center text-danger">${succMsg}}</h4>
						<c:remove var="succMsg"/>
						</c:if>
						<form action="login" method="post">
							<div class="form-group">
								<label>Enter Email</label>
								<input type="email" name="email" id ="exampleInputEmail1" 
										required="required" 
										class="form-control"
										aria-describedby="emailHelp" 
								>
							</div>
							<div class="form-group">
							<label for="exampleInputPassword1">Enter Password</label>
							<input type="password" name="password" id="exampleInputPassword1"
									required="required"
									class="form-control"
							>
							</div>
							
							<button type ="submit" class="btn btn-primary badge-pill btn-black">
								Login
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 70px;">
		<%@include file="all_component/footer.jsp" %>
	</div>
</body>
</html>