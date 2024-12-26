<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body style="background-color: #f0f1f2">
	

	<jsp:include page="include/menu.jsp"></jsp:include>
 	<s:url var="url_userList" value="/user"/>
   <s:url var="url_flightForm" value="/flight_form"/>
    <s:url var="url_flightList" value="/adminflightList"/>
       <s:url var="url_reg" value="/regx"/>
	<div class="container">
		<div class="row p-5" style="margin-top:100px">
			<!-- Parking Slots section -->
			<div class="col-md-3">
				<a href="${url_userList }">
					<div class="card">
						<div class="card-body text-center">
					<i class="fa-solid fa-user fa-3x text-primary "></i><br> <br>
							<h4>User List</h4>
						



						</div>
					</div>
				</a>
			</div>
			<!-- end of Parking Slots section -->


			<!-- category section -->
			<div class="col-md-3">
				<a href="${url_flightForm }">
					<div class="card">
						<div class="card-body text-center">
						<i class="fa-solid fa-jet-fighter-up fa-3x text-primary "></i><br>
							<br>
							<h4>Add Flights</h4>
							
						</div>
					</div>
				</a>
			</div>
			<!-- end of category section -->
			
			<!-- Parking section -->
			<div class="col-md-3">
			<a href="${url_flightList }">
					<div class="card">
						<div class="card-body text-center">
								<i class="fa-solid fa-list-check fa-3x text-primary"></i><br>
							<br>
							<h4>Flight list</h4>
						

						</div>
					</div>
				</a>
			</div>
			<!-- end of Parking section -->

			<!-- Parking manage section -->
			<div class="col-md-3">
				<a href="${url_reg}">
					<div class="card">
						<div class="card-body text-center">
						<i class="fa-solid fa-user-plus fa-3x text-primary"></i>
						<br>
							<br>
							<h4>Add user</h4>
						

						</div>
					</div>
				</a>
			</div>
			<!-- End of Parking manage section -->



			<!-- First row ends here -->

			<div style="margin-top: 20px;"></div>
			<!-- Second row for the last two columns -->

			<br> <br>
			

										<div class="modal-footer"></div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
<footer class="footer">
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>  

</body>
</html>