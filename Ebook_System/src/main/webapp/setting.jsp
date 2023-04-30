<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Setting</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
	a {
	text-decoration: none;
	color: black;
	
}
</style>
</head>
<body>

<c:if test="${empty userobj }">
	<c:redirect url="login.jsp"></c:redirect>
	
</c:if>
<%@include file="all_component/navbar.jsp" %>
	<div class="container">
		<h3 class="text-center">Hello, ${userobj.name }</h3>
			<div class="row">
				<div class="col-md-4">
					<a href="sell_book.jsp">
						<div class="card mt-3">
							<div class="card-body text-center">
								<i class="fa-solid fa-book-open fa-3x text-primary"></i><br>
								<h4>Sell Old Books</h4>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="old_book.jsp">
						<div class="card mt-3">
							<div class="card-body text-center">
								<i class="fa-solid fa-book fa-3x text-success"></i></i><br>
								<h4>Old Books</h4>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-4">
					<a href="edit_profile.jsp">
						<div class="card mt-3">
								<div class="card-body text-center">
									<i class="fa-solid fa-address-card fa-3x text-primary"></i><br>
									<h4>Login & Security(Edit Profile)</h4>
								</div>
							</div>
					</a>
				</div>
			</div>
			<div class="row">
				
				<div class="col-md-6">
					<a href="order.jsp">
						<div class="card mt-3">
								<div class="card-body text-center">
									<i class="fa-solid fa-box fa-3x text-danger"></i><br>
									<h4>My Order</h4>
									<p>Trade your Order</p>
								</div>
							</div>
					</a>
				</div>
				<div class="col-md-6">
					<a href="helpline.jsp">
						<div class="card mt-3">
								<div class="card-body text-center">
									<i class="fa-solid fa-user fa-3x text-primary"></i><br>
									<h4>Help Center</h4>
									<p>03755123*** Service</p>
								</div>
							</div>
					</a>
				</div>
			</div>
		
	</div>
 <%@include file="all_component/footer.jsp" %> 
</body>
</html>