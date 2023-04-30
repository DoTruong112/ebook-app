<%@page import="com.entity.Book_Oder"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.OrderBookImpl"%>
<%@page import="com.DAO.BookOrderDAO"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Order</title>
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
<c:if test="${empty userobj }">
	<c:redirect url="login.jsp"></c:redirect>
</c:if>

<%@include file="all_component/navbar.jsp" %>
	<div class="container">
		<h3 class="text-center text-primary pt-3">Your Order</h3>
		<table class="table" style="margin-top: 20px;">
			<thead>
				<tr class="bg-info">
					<th>Order Id</th>
					<th>Name</th>
					<th>Book Name</th>
					<th>Author</th>
					<th>Price</th>
					<th>Payment Type</th>
				</tr>
			</thead>
			<tbody>
				<%
					User u =(User) session.getAttribute("userobj");
					OrderBookImpl dao = new OrderBookImpl(DBConnect.getCon());
					List<Book_Oder> blist=dao.getBook(u.getEmail());
					for(Book_Oder b: blist){%>
						<tr>
							<td scope="row"><%=b.getOrderId() %></td>
							<td><%=b.getUsername()%></td>
							<td><%=b.getBookName() %></td>
							<td><%=b.getAuthor()%></td>
							<td><%=b.getPrice()%></td>
							<td><%=b.getPaymentType()%></td>
						</tr>
					<%}
					
				%>
			
			</tbody>
		</table>
	</div>
</body>
</html>