 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<div style="height: 10px; background-color: #90AFC5"></div>
<div class="container">
	<div class="row">
		<div class="col-md-4 p-3">
			<h3 style="color: #763626"><i class="fa-solid fa-book"></i> Ebooks</h3>
		</div>
		<div class="col-md-5 p-3">
		</div>
		<div class="col-md-3 p-3">
		<c:if test="${not empty userobj}">
			<a href="" class="btn" style="background-color: #763626; color: white"><i class="fa-solid fa-user"> </i> ${userobj.name }</a>	
			<a href="" class="btn" data-bs-toggle="modal" data-bs-target="#myModal" style="background-color: #336B87; color: white;"><i class="fa-solid fa-right-to-bracket"></i> Logout</a>			
		</c:if>
		<c:if test="${empty userobj }">
			<a href="../login.jsp" class="btn" style="background-color: #763626; color: white"><i class="fa-solid fa-sign-in-alt"> </i> Login</a>
			<a href="../register.jsp" class="btn" style="background-color: #336B87; color: white;"><i class="fa-solid fa-user-plus"></i> Register</a>		
		</c:if>
		
		</div>
	</div>
</div>



<!-- The Modal -->
<div class="modal" id="myModal" style="top:25%;">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>

			<!-- Modal body -->
			<div class="modal-body text-center">
				<h4 class="pb-2">Do you want logout?</h4>
				<button type="button" class="btn" style="background-color: #763626; color: white;" data-bs-dismiss="modal">Close</button>
				<a href="../logout" class="btn" style="background-color: #336B87; color: white;">Logout</a>			
			</div>
			
			<!-- Modal footer -->
			<div class="modal-footer">
				
			</div>

		</div>
	</div>
</div>


<nav class="navbar navbar-expand-sm navbar-dark bg-custom">
  <div class="container">
  <a class="navbar-brand" href="home.jsp"><i class="fa-solid fa-house-chimney"></i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="home.jsp">Home</a>
        </li>
      </ul>
    </div>
  </div>
</nav>