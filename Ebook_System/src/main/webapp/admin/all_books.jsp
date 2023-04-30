<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
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
<title>Admin: All Books</title>
<%@ include file="/admin/allCss.jsp" %>
</head>
<body>
	<%@ include file="/admin/navbar.jsp" %>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>
	<h3 class="text-center text-success pt-3">Hello Admin</h3>
	<c:if test="${not empty succMsg }">
		<p class="text-center text-success">${succMsg}</p>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg}</p>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
	<table class="table">
    <thead>
      <tr class="bg-dark text-center" style="color: white; font-weight: bold;">
      	<th>Id</th>
        <th>Image</th>
        <th>Book Name</th>
        <th>Author Name</th>
        <th>Price</th>
        <th>Book Categories</th>
        <th>Status</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody class="text-center">
    
    	<%
    		BookDAOImpl dao = new BookDAOImpl(DBConnect.getCon());
    		List<BookDtls> list = dao.getAllBook();
    		for(BookDtls b:list){
    			%>
			<tr>
				<td><%=b.getBookId()%></td>
				<td> <img alt="" src="../book/<%=b.getPhotoName()%>" style="width: 50px; height: 70px;"> </td>
				<td><%=b.getBookName()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="edit_books.jsp?id=<%=b.getBookId() %>" class="btn btn-sm"
					style="background-color: #763626; color: white"><i class="fa-solid fa-pen-to-square"></i> Edit</a> <a
					href="../delete?id=<%=b.getBookId()%>" class="btn btn-sm"
					style="background-color: #336B87; color: white;"><i class="fa-solid fa-trash"></i> Delete</a></td>
			</tr>
			<%
			}
			%>

    </tbody>
</table>
<div style="margin-top: 150px;"><%@include file="footer.jsp" %></div>
</body>
</html>