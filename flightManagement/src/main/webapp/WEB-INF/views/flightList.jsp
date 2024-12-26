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
.err  {
	color: red;
	
}

.success  {
	color: blue;
}

.live{
font-size: 1rem;
  font-weight: 500;
color:blue;
}

.delay{
font-size: 1rem;
  font-weight: 500;
color:red;
}


</style>


</head>

<body

   
>


	<jsp:include page="include/menu.jsp"></jsp:include>
	<main class="" id="customers_table">
		<section class="table__header">

			<h1>Flight Lists</h1>


			<c:if test="${empty flightList }">
				<p class="err">No records found.</p>
			</c:if>
			<c:if test="${param.act eq 'saved' }">
				<p class=success>flights added successfully.</p>
			</c:if>
			<c:if test="${param.act eq 'del' }">
				<p class=success>flights Cancel Successfully.</p>
			</c:if>
			<s:url var="url_search" value="/data/search" />

			<div class="export__file">
				<label for="export-file" class="export__file-btn"
					title="Export File"></label>

				<div class="export__file-options"></div>
			</div>
		</section>
		<section class="table__body">
			<table>
				<thead>
					<tr>
						<th>SN</th>
						<th>FlightId</th>
						<th>YourId</th>
						<th>Location</th>
						<th>Date</th>
						<th>Time</th>
						<th>Status</th>
						<th>Action</th>



					</tr>
				</thead>
				<tbody>
					<c:forEach var="f" items="${ flightList}" varStatus="st">
						<tr>


							<td>${st.count }</td>
							<td>${f.flightId }</td>
							<td>${f.userId}</td>
							<td>${f.destination }and ${f.destinationTwo }</td>
							<td>${f.departure}</td>
							<td>${f.timeIn }- ${f.timeOut }</td>
							<c:choose>
								<c:when test="${f.flightStatus eq '1'}">
									<td class="live">Live</td>
								</c:when>
								<c:otherwise>
									<td class="delay">Delay</td>
								</c:otherwise>
							</c:choose>
							<s:url var="url_del" value="/user/cancel">
								<s:param name="fid" value="${f.flightId }" />
							</s:url>
							<td><button  class="btn" onclick="location.href='${url_del}'">Cancel</button></td>




						</tr>
					</c:forEach>

				</tbody>
			</table>

		</section>
	</main>
	<script src="script.js"></script>
</body>

</html>