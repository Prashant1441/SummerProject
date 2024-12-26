<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Form</title>
<s:url var="url_css"  value="/static/css/regstration.css"/>
<link href="${url_css }" rel="stylesheet" type="text/css">

 <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<style type="text/css">
.error{
color:red;
}

</style>
  <style type="text/css">
        div.ui-datepicker
        {
            font-size: 10px;
        }
    </style>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/themes/start/jquery-ui.css" type="text/css" media="all" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/jquery-ui.min.js" type="text/javascript"></script>
  
</head>


 <s:url var="url_img" value="/static/img/img.jpg"/>  
<body >
<jsp:include page="include/menu.jsp"></jsp:include>



	<s:url var="flight_form" value="/flights"/>
	<c:if test="${err!=null}">
	<p class="error"> ${err} </p>
	</c:if>
	 <div id="container">
    <!-- Form Wrap Start -->
    <div class="form-wrap">
      <h1>Add Flights</h1>
     
      <!-- Form Start -->

	<f:form action="${flight_form}" modelAttribute="command" method="post">
		<div class="form-group">
			<label for="Name">flightStatus</label>
		<f:input path="flightStatus" placeholder="FlightStatus"/>
		<f:errors path="flightStatus" cssClass="error"></f:errors>
			</div>
			
	<div class="form-group">
			<label for="Name">From</label>
		<f:input path="destination" placeholder="From"/>
		<f:errors path="destination" cssClass="error"></f:errors>
			</div>
			
			<div class="form-group">
			<label for="username">To</label>
			<f:input path="destinationTwo" placeholder="to"/>
			<f:errors path="destinationTwo" cssClass="error"></f:errors>
			
			</div>
			<div class="form-group">
			<label for="phone">TimeIn</label>
			<f:input path="timeIn" placeholder="timeIN"/>
			<f:errors path="timeIn" cssClass="error"></f:errors>
			
			</div>
			<div class="form-group">
			<label for="address">TimeOut</label>
		<f:input path="timeOut" placeholder="timeOut"/>
<f:errors path="timeOut" cssClass="error"></f:errors>
			
			
			</div>
			<div class="form-group">
			<label for="email">Departure</label>
			<f:input path="departure"  type="date" class="input" placeholder="Departure"  />
			<f:errors path="departure" cssClass="error"></f:errors>
			</div>
			
			<button type="submit">Add Flights</button>
       
	</f:form>
	</div>
	</div>
	<footer class="footer">
    <jsp:include page="include/footer.jsp"></jsp:include>
          </footer>
</body>

</html>
