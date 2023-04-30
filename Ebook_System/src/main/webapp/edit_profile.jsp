<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Edit Profile</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
	.pt-3.p-3.mx-auto{
		width: 350px;
		border: 1px solid #888888;
		border-radius: 15px;
		box-shadow:  1px 2px 10px #888888; 
		margin-top: 30px;
	}
</style>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
	
		<div class="container">
		<form action="update_profile" class="pt-3 p-3 mx-auto" method="post" >
			<h4 class="text-center text-success">Edit Profile</h4>
			
			<c:if test="${not empty failedMsg }">
				<h5 class="text-center text-danger">${failedMsg}</h5>
				<c:remove var="failedMsg" scope="session"/>
			</c:if>
			
			<c:if test="${not empty succMsg }">
				<h5 class="text-center text-success">${succMsg}</h5>
				<c:remove var="succMsg" scope="session"/>
			</c:if>
			
			<input type="hidden" value="${userobj.id }" name="id">
			<div class="mb-3 mt-3">
				<label for="book_name" class="form-label">Name*</label> <input
					type="text" class="form-control" id="fname"
					 name="fname" value="${userobj.name }">
			</div>
			<div class="mb-3 mt-3">
				<label for="author_name" class="form-label">Email Address*</label> <input
					type="email" class="form-control" id="email" name="email" value="${userobj.email }">
			</div>
			<div class="mb-3">
				<label for="nPhone" class="form-label">Phone*</label> <input
					type="text" class="form-control" id="nPhone"
					 name="phno" value="${userobj.phno }">
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password</label> <input
					type="password" class="form-control" id="password"
					 name="password">
			</div>
			<div class="text-center">
			<button type="submit" class="btn" style="background-color: #336B87; color:white;">Update</button></div>
		</form>
	</div>
 <%@include file="all_component/footer.jsp" %>
</body>
</html>