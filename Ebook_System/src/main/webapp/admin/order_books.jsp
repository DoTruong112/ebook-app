<%@page import="com.entity.Book_Oder"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.OrderBookImpl"%>
<%@page import="com.DAO.BookOrderDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Orders</title>
<%@ include file="/admin/allCss.jsp" %>
</head>
<body>
<c:if test="${empty userobj }">
	<c:redirect url="login.jsp"></c:redirect>
	
</c:if>
	<%@ include file="/admin/navbar.jsp" %>
	<h3 class="text-center text-success pt-3">Hello Admin</h3>
	
	<table class="table">
    <thead>
      <tr class="bg-dark text-center" style="color: white; font-weight: bold;">
        <th>Order Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Phone No</th>
        <th>Book Name</th>
        <th>Author</th>
        <th>Price</th>
        <th>Payment Type</th>
      </tr>
    </thead>
    <tbody class="text-center">
    
    	<%
    		OrderBookImpl dao = new OrderBookImpl(DBConnect.getCon());
    		List<Book_Oder> blist = dao.getAllOrderBook();
    		for(Book_Oder b: blist){%>
    			<tr>
			        <td scope="row"><%=b.getOrderId() %></td>
			        <td><%=b.getUsername()%></td>
			        <td><%=b.getEmail()%></td>
			        <td><%=b.getFulladd()%></td>
			        <td><%=b.getPhno()%></td>
			        <td><%=b.getBookName()%></td>
			        <td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
			        <td><%=b.getPaymentType()%></td>
			      </tr>
    		<%}
    	%>
      
    </tbody>
</table>
<div style="margin-top: 100px;"><%@include file="footer.jsp" %></div>
</body>
</html>