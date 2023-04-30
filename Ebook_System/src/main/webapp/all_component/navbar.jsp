<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<div style="height: 10px; background-color: #90AFC5"></div>
<div class="container">
	<div class="row">
		<div class="col-md-4 p-3">
			<h3 style="color: #763626"><i class="fa-solid fa-book"></i> Ebooks</h3>
		</div>
		<div class="col-md-4 p-3 text-center">
			<form class="d-flex" action="search.jsp" method="post">
				<input class="form-control me-2" type="text" placeholder="Search" style="width: 250px" name="ch">
				<button class="btn" type="submit" style="background-color: #336B87; color: white;">Search</button>
			</form>
		</div>
		
		<c:if test="${not empty userobj}">
			<div class="col-md-4 p-3 text-center">
				<a href="checkout.jsp" class="btn" style="background-color: #90AFC5; color: white"><i class="fa-solid fa-cart-shopping"></i></a>
				<a href="login.jsp" class="btn" style="background-color: #763626; color: white"><i class="fa-solid fa-user"></i> ${userobj.name}</a>
				<a href="logout" class="btn" style="background-color: #336B87; color: white;"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>		
			</div>
			
		</c:if>
		
		<c:if test="${empty userobj }">
			<div class="col-md-4 p-3 text-center">
			<a href="login.jsp" class="btn" style="background-color: #763626; color: white"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
			<a href="register.jsp" class="btn" style="background-color: #336B87; color: white;"><i class="fa-solid fa-user-plus"></i> Register</a>		
		</div>
		
		</c:if>
		
		
	</div>
</div>

<nav class="navbar navbar-expand-sm navbar-dark bg-custom">
  <div class="container">
  <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house-chimney"></i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="all_recent_book.jsp"><i class="fa-solid fa-book-open"></i> Recent Book</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="all_new_book.jsp"><i class="fa-solid fa-book"></i> New Book</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="all_old_book.jsp"><i class="fa-solid fa-book-bookmark"></i> Old Book</a>
        </li>
      </ul>
      <form class="form-inline my-2 my-lg-0" role="search">
      	<a href="setting.jsp" class="btn" style="background-color: #336B87; color: white;"><i class="fa-solid fa-gear"></i> Setting</a>	
       
        <button class="btn my-2 my-sm-0 ml-1" type="button" style="background-color: #763626; color: white"><i class="fa-solid fa-phone"></i> Contact Us</button>
      </form>
    </div>
  </div>
</nav>