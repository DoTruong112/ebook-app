<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Sell Books</title>
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
		<form action="add_old_book" class="pt-3 p-3 mx-auto" method="post" enctype="multipart/form-data">
			<input type="hidden" value="${userobj.email}" name="user">
			<h4 class="text-center text-success">Sell Book</h4>
			
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
				<label for="exampleFormControlFile1" class="form-label">Upload Photo</label> <br> <input
					type="file" class="form-control-flie" id="exampleFormControlFile1"
					 name="bimg">
			</div>
			<div class="text-center">
			<button type="submit" class="btn" style="background-color: #336B87; color:white;">Sell</button></div>
		</form>
	</div>
 <%@include file="all_component/footer.jsp" %> 		
</body>
</html>