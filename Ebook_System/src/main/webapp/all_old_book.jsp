<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Old Book</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
	.card.mx-auto{
		border: 1px solid #888888;
		border-radius: 15px;
	}
	.card.mx-auto:hover{
		box-shadow:  1px 2px 10px #888888; 
		transition-duration: 0.2s;
	}
</style>
</head>
<body>
 <%@include file="all_component/navbar.jsp"%>
 	<div class="container">
	 	<h3 class="text-center pt-3">Old Book</h3>
	 	<div class="row">
	 		<%
    		BookDAOImpl dao = new BookDAOImpl(DBConnect.getCon());
    		List<BookDtls> list = dao.getOldBooks();
    		for(BookDtls b:list){
    		%>
    			<div class="col-md-3 pt-3">
				<div class="card mx-auto" style="width: 250px">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>" style="max-width: 100%; height: 200px;"
						class="img-thumgblin">
						<p class="pt-1" style="font-weight: bold;"><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>Categories: <%=b.getBookCategory()%></p>
						<div class="row p-1">
							<a href="view_book.jsp?bid=<%=b.getBookId()%>" class="btn col btn-sm ml-1" style="background: #336B87; color: white; margin-left: 5px;">View</a>	
							<a href="" class="btn col btn-sm ml-1" style="background: #763626; color: white; margin-left: 5px;"><%=b.getPrice()%> <i class="fa-solid fa-dollar-sign"></i></a>							
						</div>
					</div>
				</div>
				</div>
			<%
			}
			%>
				 		 	
		</div>
	 </div>
  <%@include file="all_component/footer.jsp" %>
</body>
</html>