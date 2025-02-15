<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #3e2723;">

	<!-- Navbar Code (No Changes) -->
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
					<li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
					<li class="nav-item"><a class="nav-link" href="register.jsp">Register</a></li>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>

	<!-- Login Form with Message -->
	<div class="container">
		<div class="row mt-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center c-head">
						<div class="fa fa-user-circle-o fa-2x"></div>
						<h5>Login</h5>
					</div>

					<%
					String logoutMsg = (String) session.getAttribute("logout-msg");
					if (logoutMsg != null) {
					%>


					<div class="alert alert-success" role="alert"><%=logoutMsg%></div>
					<%
					session.removeAttribute("logout-msg");
					}
					%>

					<%
					String errorMsg = (String) session.getAttribute("error-msg");
					if (errorMsg != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=errorMsg%></div>

					<%
					session.removeAttribute("errorMsg");
					}
					%>



					<div class="card-body c-body">





						<form action="LoginServlet" method="post">
							<div class="mb-3">
								<label for="email" class="form-label">Enter Email
									address</label> <input type="email" name="email" class="form-control"
									id="email" required>
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Enter Password</label>
								<input type="password" name="password" class="form-control"
									id="password" required>
							</div>
							<button type="submit" class="btn btn-primary w-100 rounded-pill">Login</button>



						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
