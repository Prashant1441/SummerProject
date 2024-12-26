<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>

<s:url var="url_css" value="/static/css/regstration.css" />
<link href="${url_css }" rel="stylesheet" type="text/css">

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<style type="text/css">
.error {
	color: red;
}
</style>
</head>

<body>
	<jsp:include page="include/menu.jsp"></jsp:include>



	<s:url var="reg_form" value="/regForm" />
	<c:if test="${err!=null}">
		<p class="error">${err}</p>
	</c:if>
	<div id="container">
		<!-- Form Wrap Start -->
		<div class="form-wrap">
			<h1>Registration</h1>

			<!-- Form Start -->

			<f:form action="${reg_form}" modelAttribute="command" method="post">
				<div class="form-group">
					<label for="Name">Name</label>
					<f:input path="Name" placeholder="Name" />
					<f:errors path="name" cssClass="error"></f:errors>
				</div>

				<div class="form-group">
					<label for="Name">LoginName</label>
					<f:input path="loginName" placeholder="UserName" />
					<f:errors path="loginName" cssClass="error"></f:errors>
				</div>

				<div class="form-group">
					<label for="username">Phone </label>
					<f:input path="phone" placeholder="Phone" />
					<f:errors path="phone" cssClass="error"></f:errors>
				</div>

				<div class="form-group">
					<label for="address">address</label>
					<f:input path="address" placeholder="address" />
					<f:errors path="address" cssClass="error"></f:errors>


				</div>
				<div class="form-group">
					<label for="email">email</label>
					<f:input path="email" id="txtDateFrom" class="input"
						placeholder="Email" />
					<f:errors path="email" cssClass="error"></f:errors>
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<f:password path="password" placeholder="Password" />
					<f:errors path="password" cssClass="error"></f:errors>
				</div>
				<button type="submit">Register</button>

			</f:form>
		</div>
	</div>
	<footer class="footer">
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
</body>

</html>
