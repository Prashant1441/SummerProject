
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Form</title>
<s:url var="url_css" value="/static/css/regstration.css" />
<link href="${url_css }" rel="stylesheet" type="text/css">

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<style type="text/css">
.error {
	color: red;
}
</style>
<style type="text/css">
.styled-select {
	background-color: #fff; /* Background color */
	border: 1px solid #ccc;
	border-radius: 4px;
	padding: 8px 16px; /* Padding */
	display: block;
	color: #666;
	font-size: 16px; /* Font size */
	cursor: pointer; /* Cursor on hover */
	width: 100%; /* Width of the select */
}

.styled-select:hover {
	background-color: #fff; /* Change background color on hover */
}

.styled-select:focus {
	outline: none; /* Remove outline on focus */
	box-shadow: 0 0 4px rgba(0, 0, 0, 0.1); /* Add box-shadow on focus */
}

.select-menu {
	width: 100%;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.select-menu .select-btn {
	display: flex;
	height: 40px;
	background: #fff;
	font-size: 18px;
	font-weight: 400;
	border-radius: 8px;
	align-items: center;
	cursor: pointer;
	justify-content: space-between;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

.select-btn i {
	font-size: 25px;
	transition: 0.3s;
}

.select-menu.active .select-btn i {
	transform: rotate(-180deg);
}

.select-menu .options {
	position: relative;
	padding: 20px;
	margin-top: 10px;
	border-radius: 8px;
	background: #fff;
	box-shadow: 0 0 3px rgba(0, 0, 0, 0.1);
	display: none;
}

.select-menu.active .options {
	display: block;
}

.options .option {
	display: flex;
	heigth: 55px;
	cursor: pointer;
	padding: 0 16px;
	border-radius: 8px;
	align-items: center;
	background: #fff;
}

.options .option:hover {
	background: #F2F2F2;
}

.option i {
	font-size: 25px;
	margin-right: 12px;
}

.option .option-text {
	font-size: 18px;
	color: #333;
}

.box .button {
	width: 30px;
	height: 32px;
	border: 1px solid #c6c6c6;
	border-radius: 5px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 22px;
	cursor: pointer;
	padding: 5px 10px;
	margin: 0 10px;
}

.box input {
	width: 45px;
	heigth: 32px padding: 5px 10px;
	border: 1px solid #c6c6c6;
	border-radius: 5px;
	font-size: 22px;
	margin: 0 10px;
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


<s:url var="url_img" value="/static/img/img.jpg" />
<body>
	<jsp:include page="include/menu.jsp"></jsp:include>



	<s:url var="flight_form" value="/Book/flights" />
	<c:if test="${err!=null}">
		<p class="error">${err}</p>
	</c:if>
	<div id="container">
		<!-- Form Wrap Start -->
		<div class="form-wrap">
			<h1>Book Flights</h1>

			<!-- Form Start -->

			<f:form action="${flight_form}" modelAttribute="command"
				method="post">
				

				<div class="form-group">
					<label for="Name">Destination</label>
					<f:input path="destination" placeholder="From" readonly="true"/>
					<f:errors path="destination" cssClass="error"></f:errors>
				</div>

				<div class="form-group">
					<label for="username">Destination Two</label>
					<f:input path="destinationTwo" placeholder="to" readonly="true" />
					<f:errors path="destinationTwo" cssClass="error"></f:errors>

				</div>
				<div class="form-group">
					<label for="phone">TimeIn</label>
					<f:input path="timeIn" placeholder="timeIN"  readonly="true"/>
					<f:errors path="timeIn" cssClass="error"></f:errors>

				</div>
				<div class="form-group">
					<label for="address">TimeOut</label>
					<f:input path="timeOut" placeholder="timeOut"  readonly="true"/>
					<f:errors path="timeOut" cssClass="error"></f:errors>


				</div>
				<div class="form-group">
					<label for="email">Departure</label>
					<f:input path="Departure"  class="input"
						placeholder="Departure"  readonly="true"/>
					<f:errors path="Departure" cssClass="error"></f:errors>
				</div>
				<div class="form-group">
					<label for="password">Return</label>
					<f:input path="Freturn" type ="date" class="input"
						placeholder="Return" />
					<f:errors path="Freturn" cssClass="error"></f:errors>
				</div>
				<div class="form-group">
					<f:errors path="FlightClass" cssClass="error"></f:errors>
					<label for="password">Flight class</label> <select
						class="styled-select" aria-label="Large select example"
						name="flightClass">

						<option value="1">Economy</option>
						<option value="2">Business</option>
						<option value="2">Premium</option>
					</select>
				

				</div>
				<div class="form-group">
					<label for="password">Flight Type</label> <select
						class="styled-select" aria-label="Large select example"
						name="flightType">

						<option value="1">One-Way</option>
						<option value="2">Two_Way</option>

					</select>

				<f:errors path="FlightType" cssClass="error"></f:errors>
				</div>
				
				<div class="form-group">
					<div class="select-menu ">
        <div class="select-btn">
            <span class="sBtn-text">Traveler</span>
            <i class="bx bx-chevron-down"></i>
        </div>
      <div class="box">
        <ul class="options">
            <li class="option">
              
                  
      <label>Total travelers:</label>
      
  
   <f:input  path ="traveler" id="total" value="0" />
 
           </li>
            
        </ul>
      </div>
      <div class="box">
        <ul class="options">
            <li class="option">
              
                  
      <label class="Name">Adult:</label>
      <div class="dec button">-</div>
  <f:input path="add" id="1" value="0" class="input-filed"/>
  <div class="inc button">+</div>
           </li>
            
        </ul>
      </div>
      <div class="box">
         <ul class="options">
            <li class="option">
      <label class="Name">Children:</label>
      <div class="dec button">-</div>
   <f:input path="add" id="1" value="0" class="input-filed"/>
  <div class="inc button">+</div>
              
               </li>
            
        </ul>
      </div>
      <div class="box">
         <ul class="options">
            <li class="option">
      <label class="Name">Senior:</label>
      <div class="dec button">-</div>
 <f:input path="add" id="1" value="0" class="input-filed"/>
 
  <div class="inc button">+</div>
                
                
            </li>
            
        </ul>
      </div>
    </div>
    <f:errors path="traveler" cssClass="error"></f:errors>

				</div>
				<button type="submit">Book Flights</button>



	</f:form>
	</div>
	</div>
	<footer class="footer">
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
	<script>
	const optionMenu = document.querySelector(".select-menu"),
    selectBtn = optionMenu.querySelector(".select-btn"),
    options = optionMenu.querySelectorAll(".option"),
    sBtn_text = optionMenu.querySelector(".sBtn-text");

selectBtn.addEventListener("click", () => optionMenu.classList.toggle("active"));       


var incrementButton =document.getElementsByClassName('inc');
var decrementButton =document.getElementsByClassName('dec');

for(var i=0;i<incrementButton.length; i++){
 var button=incrementButton[i];
 button.addEventListener('click',function(event){
   var buttonClicked= event.target;
   var input =buttonClicked.parentElement.children[2];
   var inputValue= input.value;
   var newValue= parseInt(inputValue) +1;
   input.value=newValue;
   getTotal();
 })
}




for(var i=0;i<decrementButton.length; i++){
 var button=decrementButton[i];
 button.addEventListener('click',function(event){
   var buttonClicked= event.target;
   var input =buttonClicked.parentElement.children[2];
   var inputValue= input.value;
   var newValue= parseInt(inputValue) -1;
   if(newValue>=0){
     input.value=newValue;
   }
   else{
     alert('travelers should be more than 0');
   }
   getTotal();
 })
 
}



function getTotal(){
 var arr= document.querySelectorAll('.input-filed');
 var total= 0;

 for(var i=0; i<arr.length; i++){
   if(parseInt(arr[i].value)){
     total += parseInt(arr[i].value);
   }
 }
 document.getElementById('total').value = total;
}
	

	</script>
</body>



</html>
