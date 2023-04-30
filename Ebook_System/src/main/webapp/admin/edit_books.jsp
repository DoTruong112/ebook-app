<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Edit Books</title>
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
	<div class="container">
		<form action="../editbooks" class="pt-3 p-3 mx-auto" method="post">
			<h4 class="text-center text-success">Book Edit</h4>
			


			<% int id =Integer.parseInt(request.getParameter("id"));
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getCon());
				BookDtls b = dao.getBookById(id);
				
			%>
			<input type="hidden" class="form-control" id="book_name"
				name="id" value="<%=b.getBookId()%>">

			<div class="mb-3 mt-3">
				<label for="book_name" class="form-label">Book Name*</label> <input
					type="text" class="form-control" id="book_name"
					 name="book_name" value="<%=b.getBookName()%>">
			</div>
			<div class="mb-3 mt-3">
				<label for="author_name" class="form-label">Author Name*</label> <input
					type="text" class="form-control" id="author_name" name="author_name" value="<%=b.getAuthor()%>">
			</div>
			<div class="mb-3">
				<label for="price" class="form-label">Price*</label> <input
					type="number" class="form-control" id="price"
					 name="price" value="<%=b.getPrice()%>">
			</div>
			<div class="mb-3">
				<label for="book_status" class="form-label">Book Status</label>
				<select id="inputState" name="status" class="form-select">
					<%if("Active".equals(b.getStatus())){%>
						<option valua="Active">Active</option>
						<option valua="Inactive">Inactive</option>
						
					<%}else{%>
						
						<option valua="Inactive">Inactive</option>
						<option valua="Active">Active</option>
					<%	
					}
					%>
					
					
					
				</select>
			</div>
			<div class="text-center">
			<button type="submit" class="btn" style="background-color: #336B87; color:white;">Update</button></div>
		</form>
	</div>
<%@include file="footer.jsp" %>
</body>
</html>