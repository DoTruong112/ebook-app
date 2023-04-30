<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@ include file="/admin/allCss.jsp" %>
<style type="text/css">
	a {
	text-decoration: none;
	color: black;
	
}
</style>
</head>
<body>
<%@ include file="/admin/navbar.jsp" %>
	
	
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-3">
			<a href="add_books.jsp">
				<div class="card mt-3">
					<div class="card-body text-center">
						<i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
						<h4>Add books</h4>
						--------------
					</div>
				</div>
			</a>
			</div>
			<div class="col-md-3">
				<a href="all_books.jsp">
				<div class="card mt-3">
					<div class="card-body text-center">
						<i class="fa-solid fa-book-open fa-3x text-danger"></i><br>
						<h4>All Books</h4>
						--------------
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-3">
				<a href="order_books.jsp">
				<div class="card mt-3">
					<div class="card-body text-center">
						<i class="fa-solid fa-box fa-3x text-warning"></i></i><br>
						<h4>Orders</h4>
						--------------
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-3">
 				<a href="" data-bs-toggle="modal" data-bs-target="#myModal">
				<div class="card mt-3">
					<div class="card-body text-center">
						<i class="fa-solid fa-right-from-bracket fa-3x text-success"></i><br>
						<h4>Logout</h4>
						--------------
					</div>
				</div>
				</a>
			</div>		
		</div>
	</div>
	<div style="margin-top: 100px;"><%@include file="footer.jsp" %></div>

</body>
</html>