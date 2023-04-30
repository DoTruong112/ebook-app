<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Add Address</title>

<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
	.pt-3.p-3.mx-auto{
		width: 450px;
		border: 1px solid #888888;
		border-radius: 15px;
		box-shadow:  1px 2px 10px #888888; 
		margin-top: 30px;
		margin-bottom: 50px;
	}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp" %>
	
		<div class="container">
		<form action="" class="pt-3 p-3 mx-auto" method="post" enctype="multipart/form-data">
			<h4 class="text-center text-success">Add Address</h4>
			<div class="row">
				<div class="col-md-6">
					<div class="mb-3 mt-3">
						<label for="address" class="form-label">Address</label> <input
							type="text" class="form-control" id="address" name="address">
					</div>
				</div>
				<div class="col-md-6">
					<div class="mb-3 mt-3">
						<label for="landmark" class="form-label">Landmark</label> <input
							type="text" class="form-control" id="landmark" name="lankmark">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="mb-3">
						<label for="city" class="form-label">City</label> <input
							type="text" class="form-control" id="city" name="city">
					</div>
				</div>
				<div class="col-md-4">
					<div class="mb-3">
						<label for="state" class="form-label">State</label> <input
							type="text" class="form-control" id="state" name="state">
					</div>
				</div>
				<div class="col-md-4">
					<div class="mb-3">
						<label for="pin" class="form-label">Pin</label> <input
							type="text" class="form-control" id="pin" name="pin">
					</div>
				</div>
				
			</div>
			<div class="text-center">
			<button type="submit" class="btn" style="background-color: #336B87; color:white;">Add Address</button></div>
		</form>
	</div>
 <%@include file="all_component/footer.jsp" %>
</body>
</html>