
<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
	.back-img{
		background: url("https://t4.ftcdn.net/jpg/04/27/15/07/240_F_427150784_KEv45OsuVYKLFct5rXMur8aTdMhgzOyA.jpg");
		height: 60vh;
		width: 100%;
		background-repeat: no-repeat;
		background-size: cover;
		box-shadow: 1px 2px 10px #888888;	
	}
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
	 
	 <%User u = (User) session.getAttribute("userobj");
	 	
	 %>
	 <div class="container-fluid back-img">
		<h2 class="text-center pt-3" style="color:#763626;"><i class="fa-solid fa-book"></i> Ebook Management System</h2>	 
	 </div>
<!--RECCENT BOOK  -->
	 <div class="container">
	 	<h3 class="text-center pt-3">Reccent Book</h3>
	 	<div class="row">
	 		<%
	 		BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getCon());
	 		List<BookDtls> list2=dao2.getRecentBooks();
	 		for(BookDtls b: list2)
	 		{%>
	 			<div class="col-md-3 pt-3">
				<div class="card mx-auto" style="width: 250px">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>" style="max-width: 100%; height: 200px;"
						class="img-thumgblin">
						<p class="pt-1" style="font-weight: bold"><%=b.getBookName() %></p>
						<p><%=b.getAuthor() %></p>
						<p>
						<%if(b.getBookCategory().equals("Old Book"))
						{%>
							Categories: <%=b.getBookCategory() %></p>
							<div class="row p-1">
								<a href="view_book.jsp?bid=<%=b.getBookId()%>" class="btn col btn-sm ml-1" style="background: #336B87; color: white; margin-left: 5px;">View</a>	
								<a href="" class="btn col btn-sm ml-1" style="background: #763626; color: white; margin-left: 5px;"><%=b.getPrice()%> <i class="fa-solid fa-dollar-sign"></i></a>							
							</div>
						
						<%}else{%>
							Categories: <%=b.getBookCategory() %></p>
							<div class="row p-1">
							<%if(u==null){%>
								<a href="login.jsp" class="btn col btn-sm ml-2" style="background: #90AFC5; color: white;"><i class="fa-solid fa-cart-plus"></i> Add</a>
								
							<%}else{%>
								<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn col btn-sm ml-2" style="background: #90AFC5; color: white;"><i class="fa-solid fa-cart-plus"></i> Add</a>
							<%
							}
							%>	
								
								<a href="view_book.jsp?bid=<%=b.getBookId()%>" class="btn col btn-sm ml-1" style="background: #336B87; color: white; margin-left: 5px;">View</a>	
								<a href="" class="btn col btn-sm ml-1" style="background: #763626; color: white; margin-left: 5px;"><%=b.getPrice()%> <i class="fa-solid fa-dollar-sign"></i></a>							
							</div>
						<%}
						%>
						
						
						
						
					</div>
				</div>	
			</div>
	 		<%
	 		}
	 		%>
				
		</div>
		<div class="text-center pt-3">
			<a href="all_recent_book.jsp" class="btn" style="background: #763626; color: white; margin-left: 5px;">View All</a>
		</div>
	 </div>
<!-- END RECCENT BOOK-->
<hr>
<!-- NEW BOOK  -->
	 <div class="container">
	 	<h3 class="text-center pt-3">New Book</h3>
	 	<div class="row">
			
			
			
 			<%
    		BookDAOImpl dao = new BookDAOImpl(DBConnect.getCon());
    		List<BookDtls> list = dao.getNewBook();
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
							
							<%if(u==null){%>
								<a href="login.jsp" class="btn col btn-sm ml-2" style="background: #90AFC5; color: white;"><i class="fa-solid fa-cart-plus"></i> Add</a>
								
							<%}else{%>
								<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn col btn-sm ml-2" style="background: #90AFC5; color: white;"><i class="fa-solid fa-cart-plus"></i> Add</a>
							<%
							}
							%>														
					
							<a href="view_book.jsp?bid=<%=b.getBookId() %>" class="btn col btn-sm ml-1" style="background: #336B87; color: white; margin-left: 5px;">View</a>	
							<a href="" class="btn col btn-sm ml-1" style="background: #763626; color: white; margin-left: 5px;"><%=b.getPrice()%> <i class="fa-solid fa-dollar-sign"></i></a>							
						</div>
					</div>
				</div>
				</div>
			<%
			}
			%>
			 	
		</div>
		<div class="text-center pt-3">
			<a href="all_new_book.jsp" class="btn" style="background: #763626; color: white; margin-left: 5px;">View All</a>
		</div>
	 </div>
<!-- END NEW BOOK-->
<hr>
<!-- OLD BOOK  -->
	 <div class="container">
	 	<h3 class="text-center pt-3">Old Book</h3>
	 	<div class="row">
	 		<%
    		BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getCon());
    		List<BookDtls> list3 = dao3.getOldBooks();
    		for(BookDtls b:list3){
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
		<div class="text-center pt-3">
			<a href="all_old_book.jsp" class="btn" style="background: #763626; color: white; margin-left: 5px;">View All</a>
		</div>
	 </div>
<!-- END OLD BOOK-->	 
<%@include file="all_component/footer.jsp" %> 
	 

	
</body>
</html>