<%@page import="java.util.List"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Cart</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
	.card.mx-auto{
		border: 1px solid #888888;
		border-radius: 15px;
	}
	.card.mx-auto:hover{
		box-shadow:  1px 2px 10px #888888; 
		transition-duration: 0.2s;
	}
	#toast{
		max-width: 300px;
		background-color: black;
		color: white;
		text-align: center;
		position: fixed !important;
		bottom: 10px;
		margin-left: 42%;
		padding: 15px;
		box-shadow: 0px 0px 100px #000;
		z-index: 1;
	}
	#toast.display{
		visibility: visible;
		animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
	}
	@keyframes fadeIn{from{bottom:0;
		opacity: 0;
	}to
	{
		bottom: 30px;
		opacity: 1;
	}
	}
	@keyframes fadeOut{from{bottom:30px;
		opacity: 1;
	}
	to{
		bottom:0;
		opacity: 0;
	}
	}
</style>
</head>
<body>
<c:if test="${not empty addCart}">
		<div id="toast" >${addCart }</div>
		<script type="text/javascript">
			showToast();
			function showToast(content) {
				$('#toast').addClass("display");
				$('#toast').html(content);
				setTimeout(()=>{
					$('#toast').removeClass("display");
				},2000)
			}
		
		
		</script>
		<c:remove var="addCart" scope="session"/>
	</c:if>
<%@include file="all_component/navbar.jsp" %>


<c:if test="${empty userobj }">
	<c:redirect url="login.jsp"></c:redirect>
</c:if>

<c:if test="${not empty succMsg }">
	<div class="alert text-center alert-success">
 		 <strong>Success!</strong> ${succMsg }</div>
 		 <c:remove var="succMsg" scope="session"/>

</c:if>

<c:if test="${not empty failedMsg }">
	<div class="alert text-center alert-danger">
    	<strong>Danger!</strong> ${failedMsg}
  </div>
  <c:remove var="failedMsg" scope="session"/>
</c:if>

	<div class="container">
		<div class="row mt-3">
			<div class="col-md-6 p-3" style="border: 1px solid gray;border-radius: 10px; margin-right: 20px; max-width: 47%">
				<h3 class="text-center text-success mb-3">Your Select Item</h3>
				<table class="table">
				    <thead>
				      <tr class="text-center">
				        <th>Book Name</th>
				        <th>Author</th>
				        <th>Price</th>
				        <th>Action</th>
				      </tr>
				    </thead>
				    <tbody class="text-center">
				    
				    <% 
				    	User u=(User)session.getAttribute("userobj");
				    	CartDaoImpl dao = new CartDaoImpl(DBConnect.getCon());
				    	List<Cart> cart = dao.getBookByUser(u.getId());
				    	Double totalPrice=0.0;
				    	for(Cart c:cart){
				    		totalPrice = c.getTotalPrice();
				    	%>
				    		<tr>
						        <td style="font-weight: bold"><%=c.getBookName() %></td>
						        <td><%=c.getAuthor() %></td>
						        <td><%=c.getPrice() %></td>
						        <td><a href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId() %>&&cid=<%=c.getCid()%>" class="btn bg-danger" style="color: white">Remove</a></td>
						    </tr>
				    		
				    	<%}
				    %> 
				      <tr>
						        <td style="font-weight: bold">Total Price</td>
						        <td></td>
						        <td style="font-weight: bold;"><%=totalPrice %></td>
						        <td></td>
						</tr>
				    </tbody>
				  </table>
			</div>
			<div class="col-md-6 p-3" style="border: 1px solid gray;border-radius: 10px; max-width: 47%">
				<h3 class="text-center text-success mb-3">Your Detail for Order</h3>
				<form action="order" method="post">
					<input type="hidden" value="${userobj.id }" name="id">
					<div class="row">
						<div class="col-md-6">
						  <div class="mb-3 mt-3">
							    <label for="name" class="form-label">Name</label>
							    <input type="text" class="form-control" id="name" name="username" value="${userobj.name}" readonly="readonly"> 
							  </div>
							  <div class="mb-3">
							    <label for="mphone" class="form-label">Mobile No</label>
							    <input type="text" class="form-control" id="mphone" name="phno" value="${userobj.phno }" readonly="readonly">
							  </div>
							<div class="mb-3">
							    <label for="landmark" class="form-label">Lankmark</label>
							    <input type="text" class="form-control" id="lankmark" name="landmark" required>
							  </div>
							 <div class="mb-3">
							    <label for="state" class="form-label">State</label>
							    <input type="text" class="form-control" id="state" name="state" required>
							  </div>
						  </div>
						  <div class="col-md-6">
						  <div class="mb-3 mt-3">
							    <label for="email" class="form-label">Email:</label>
							    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="${userobj.email }" readonly="readonly" required>
							  </div>
							 <div class="mb-3">
							    <label for="address" class="form-label">Address</label>
							    <input type="text" class="form-control" id="address" name="address" required>
							  </div>
							<div class="mb-3">
							    <label for="city" class="form-label">City</label>
							    <input type="text" class="form-control" id="city" name="city" required>
							  </div>
							 <div class="mb-3">
							    <label for="zip" class="form-label">Pincode</label>
							    <input type="text" class="form-control" id="zip" name="pincode" required>
							  </div>
						  </div>
					 	</div>
					 <div class="mb-3">
							    <label for="paytype" class="form-label" >Payment Type</label>
							    <select class="form-select" name="payment">
								  <option value="noselect">--select--</option>
								  <option value="COD">Payment on delivery</option>
								</select>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-warning">Order Now</button>
						<a type="btn" class="btn btn-success">Continue Shopping</a>
					</div>
					  
				</form>
			</div>
		</div>
	</div>
</body>
</html>