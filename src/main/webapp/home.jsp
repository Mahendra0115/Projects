<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.entites.User"%>

<!--  -->
<%
User user = (User) session.getAttribute("user-ob");
if (user == null) {
	session.setAttribute("login-msg", "Please Login Frist ");
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body style="background-color: #3e2723;">
	<nav
		class="navbar navbar-expand-lg bg-body-tertiary navbar-dark bg-custom">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
					</li>

					<li class="nav-item"><a class="nav-link" href="register.jsp">Register</a>
					</li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success " type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>


	<div class="container">
		<div class="row d-flex justify-content-center align-item-center mt-4">
			<div class="col-md-6">
				<div class="card">
					<%
					User user1 = (User) session.getAttribute("user-ob");
					%>
					
					<% if(user != null)
						
					{%>
					
					<div class="card-body">

						<h3>
							Name:<%=user1.getName()%></h3>
						<h3>
							Email:<%=user1.getEmail()%></h3>
						<div class="container text-center">
							<a class="btn btn-primary btn-lg text-white" href="LogoutServlet">LogOut</a>
						</div>

					</div>
					<% }%>
				</div>
			</div>
		</div>
	</div>





</body>
</html>