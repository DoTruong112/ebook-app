<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Order Success</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
	
	<div class="container text-center pt-3">
		<i class="fa-solid fa-check fa-4x text-success"></i>
		<h1>Thank You!</h1>
		<h2>Your Order Successfully..</h2>
		<h5>With in 7 Days Your Product will be Delivered In Your Address</h5>
		<a href="index.jsp" class="btn mt-3" style="background-color: #763626; color: white">Home</a>
		<a href="order.jsp" class="btn mt-3" style="background-color: #336B87; color: white;">View Order</a>
	</div>
	
</body>
</html>