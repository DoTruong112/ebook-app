<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Books</title>
<%@ include file="/admin/allCss.jsp" %>
<style type="text/css">
	.pt-3.p-3.mx-auto{
		width: 450px;
		border: 1px solid #888888;
		border-radius: 15px;
		box-shadow:  1px 2px 10px #888888; 
		margin-top: 30px;
	}
</style>
</head>
<body>
	<%@ include file="/admin/navbar.jsp" %>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>
	<div class="container">
		<form action="../add_books" class="pt-3 p-3 mx-auto" method="post" enctype="multipart/form-data">
			<h4 class="text-center text-success">Book Add</h4>
			
			<c:if test="${not empty succMsg }">
				<p class="text-center text-success">${succMsg}</p>
				<c:remove var="succMsg" scope="session"/>
			</c:if>
			<c:if test="${not empty failedMsg }">
				<p class="text-center text-danger">${failedMsg}</p>
				<c:remove var="failedMsg" scope="session"/>
			</c:if>

			
			<div class="mb-3 mt-3">
				<label for="book_name" class="form-label">Book Name*</label> <input
					type="text" class="form-control" id="book_name"
					 name="book_name">
			</div>
			<div class="mb-3 mt-3">
				<label for="author_name" class="form-label">Author Name*</label> <input
					type="text" class="form-control" id="author_name" name="author_name">
			</div>
			<div class="mb-3">
				<label for="price" class="form-label">Price*</label> <input
					type="number" class="form-control" id="price"
					 name="price">
			</div>
			<div class="mb-3">
				<label for="book_categories" class="form-label">Book Categories</label>
				<select id="inputState" name="categories" class="form-select">
					<option selected>--select--</option>
					<option>New Book</option>
				</select>
			</div>
			<div class="mb-3">
				<label for="book_status" class="form-label">Book Status</label>
				<select id="inputState" name="status" class="form-select">
					<option selected>--select--</option>
					<option valua="Active">Active</option>
					<option valua="Inactive">Inactive</option>
				</select>
			</div>
			<div class="mb-3">
				<label for="exampleFormControlFile1" class="form-label">Upload Photo</label> <br> <input
					type="file" class="form-control-flie" id="exampleFormControlFile1"
					 name="bimg">
			</div>
			<div class="text-center">
			<button type="submit" class="btn" style="background-color: #336B87; color:white;">Add</button></div>
		</form>
	</div>
<%@include file="footer.jsp" %>
</body>
</html>