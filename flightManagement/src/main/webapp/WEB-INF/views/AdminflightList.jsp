<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Flights lists</title>
<s:url var="url_css" value="static/css/flightlist.css" />
<link rel="stylesheet" type="text/css" href="${url_css }">

<style>
.live {
	color: Blue;
	font-size: 1rem;
	font-weight: 500;
}

.delay {
	color: red;
	font-size: 1rem;
	font-weight: 500;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</head>

<s:url var="url_img" value="/static/img/air3.png" />
<body>

	<jsp:include page="include/menu.jsp"></jsp:include>
	<main class="" id="customers_table">

		<section class="table__header">

			<h1>Admin Flight Lists</h1>
			<c:if test="${param.act eq 'saved' }">
				<p class=success>flights added successfully.</p>
			</c:if>

			<div class="export__file"></div>
		</section>
		<section class="table__body">
			<table>
				<thead>
					<tr>
						<th>SN</th>
						<th>FlightId</th>
						<th>UserId</th>
						<th>Location</th>
						<th>Departure Date</th>
						<th>Time</th>
						<th>Traveler</th>
						<th>Status</th>
						<th>Action</th>



					</tr>
				</thead>
				<tbody>
					<c:forEach var="f" items="${flightList}" varStatus="st">
						<tr>


							<td>${st.count }</td>
							<td>${f.flightId }</td>
							<td>${f.userId}</td>
							<td>${f.destination }To ${f.destinationTwo }</td>
							<td>${f.departure}</td>
							<td>${f.timeIn }-${f.timeOut }</td>
							<td>${f.traveler }</td>
							<c:choose>
								<c:when test="${f.flightStatus eq '1'}">
									<td class="live">Live</td>
								</c:when>
								<c:otherwise>
									<td class="delay">Delay</td>
								</c:otherwise>
							</c:choose>
							<s:url var="url_del" value="/user/del">
								<s:param name="fid" value="${f.flightId }" />
							</s:url>
							<s:url var="url_edit" value="/user/update">
								<s:param name="fid" value="${f.flightId }" />
							</s:url>
							<td><button class="btn"
									onclick="location.href='${url_edit}'">Edit</button>
								<button class="btn" onclick="location.href='${url_del}'">Delete</button></td>


						</tr>
					</c:forEach>

				</tbody>
			</table>

		</section>
	</main>
	<nav aria-label="Page navigation example" style="text-align: center;">
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
</body>

</html>