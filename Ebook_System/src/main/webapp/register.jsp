<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Register</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
	.p-3.mt-3.mx-auto{
		width: 380px;
		border: 1px solid #888888;
		border-radius: 15px;
		box-shadow:  1px 2px 10px #888888; 
	}
</style>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
	<div class="container">
		<form class="p-3 mt-3 mx-auto" action="register" method ="post">
			<h3 class="text-center">Registration</h3>
		<c:if test="${not empty succMsg}">
			<p class="text-center text-success">${succMsg}</p>
			<c:remove var="succMsg" scope="session"/>
		</c:if>
		<c:if test="${not empty failedMsg}">
			<p class="text-center text-success">${failedMsg}</p>
			<c:remove var="failedMsg" scope="session"/>
		</c:if>
			<div class="mb-3 mt-3">
				<label for="name" class="form-label">Name*</label> <input
					type="text" class="form-control" id="name"
					placeholder="Enter username" name="fname" required="required">
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email address*</label> <input
					type="email" class="form-control" id="email"
					placeholder="Enter email" aria-describedby="emailHelp" name="email" required="required">
			</div>
			<div class="mb-3">
				<label for="phone" class="form-label">Phone*</label> <input
					type="text" class="form-control" id="phone"
					placeholder="Enter phone" aria-describedby="emailHelp" name="phno" required="required">
			</div>
			<div class="mb-3">
				<label for="pwd" class="form-label">Password*</label> <input
					type="password" class="form-control" id="pwd"
					placeholder="Enter password" name="password" required="required">
			</div>
			<div class="form-check mb-3">
				<label class="form-check-label"> <input
					class="form-check-input" type="checkbox" name="check">
					Agree terms & Condition
				</label>
			</div>
			<button type="submit" class="btn" style="background-color: #336B87; color: white;">Submit</button>
		</form>
	</div>
</body>
</html>