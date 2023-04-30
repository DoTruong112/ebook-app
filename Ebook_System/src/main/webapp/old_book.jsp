<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Old Book</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

		<c:if test="${not empty succMsg}">
			<div class="alert alert-success text-center">${succMsg}</div>
			<c:remove var="succMsg" scope="session"/>
		</c:if>
	<div class="container">
		<h3 class="text-center text-primary pt-3">Your Order</h3>
		<table class="table" style="margin-top: 20px;">
			<thead>
				<tr class="bg-info">
					<th>Book Name</th>
					<th>Author</th>
					<th>Price</th>
					<th>Category</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			
				<%
					User u=(User) session.getAttribute("userobj");
					String email = u.getEmail();
					
					BookDAOImpl dao =new BookDAOImpl(DBConnect.getCon());
					List<BookDtls> list=dao.getBookByOld(email, "Old Book");
					for(BookDtls b: list){%>
						<tr>
							<td><%=b.getBookName() %></td>
							<td><%=b.getAuthor() %></td>
							<td><%=b.getPrice() %></td>
							<td><%=b.getBookCategory()%></td>
							<td><a href="delete_old_book?em=<%=email %>&&id=<%=b.getBookId()%>" class="btn btn-sm btn-danger">Delete</a></td>
						</tr> 
					<%}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>