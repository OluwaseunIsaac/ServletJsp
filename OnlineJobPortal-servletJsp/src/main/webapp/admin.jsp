<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
	.back-img {
		background: url("img/admin.jpeg");
		width: 100%
		height: 90vh
		background-repeat: no-repeat;
		background-size: cover;
	}
</style>
<!--  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>-->
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"/>
	</c:if>
	
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">Welcome Admin</h1>
		</div>
	</div>

</body>
</html>