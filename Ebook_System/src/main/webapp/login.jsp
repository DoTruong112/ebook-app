<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Login</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
	.p-3.mt-3.mx-auto{
		width: 380px;
		border: 1px solid #888888;
		border-radius: 15px;
		box-shadow:  1px 2px 10px #888888; 
	}
	.a_login{
		text-decoration: none;
		color: #2A3132;
	}
</style>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
	<div class="container">
		<form class="p-3 mt-3 mx-auto" action="login" method="post">
			<h3 class="text-center">Login</h3>
			
			<c:if test="${not empty failedMsg }">
				<h5 class="text-center text-danger">${failedMsg}</h5>
				<c:remove var="failedMsg" scope="session"/>
			</c:if>
			
			<c:if test="${not empty succMsg }">
				<h5 class="text-center text-success">${succMsg}</h5>
				<c:remove var="succMsg" scope="session"/>
			</c:if>
			
			<div class="mb-3 mt-3">
				<label for="email" class="form-label">Email: </label> <input
					type="email" class="form-control" id="email"
					placeholder="Enter email" name="email" required="required">
			</div>
			<div class="mb-3">
				<label for="pwd" class="form-label">Password: </label> <input
					type="password" class="form-control" id="pwd"
					placeholder="Enter password" name="password" required="required">
			</div>
			<div class="text-center mb-3">
			<button type="submit" class="btn" style="background-color: #336B87; color: white;">Submit</button> 
			</div>
			<div class="text-center">
				<a class="a_login" href="register.jsp">Create Account</a>
			</div>
			
		</form>
	</div>
</body>
</html>