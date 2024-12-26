
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css"
	rel="stylesheet" />
<s:url var="url_css" value="/static/css/user.css" />
<s:url var="url_header" value="/static/img/header.jpg" />

<link href="${url_css }" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<title>User Dashboard</title>
<style>

.input__content input:focus {
    outline: 0;
}

.input__content.success input {
    border-color: #09c372;
}

.input__content.error input {
    border-color: #ff3860;
}

.input__content .error {
    color: #ff3860;
    font-size: 9px;
    height: 13px;
}

</style>

</head>
<body>
	<s:url var="url_logout" value="/logout" />
	<s:url var="url_reg" value="/regx" />
	<s:url var="url_home" value="/home" />
	<s:url var="url_bookFlight" value="/bookFlight" />
	<!-- for  navbar -->
	<jsp:include page="include/menu.jsp"></jsp:include>

	<header class="section__container header__container">
		<h1 class="section__header">
			Your <br />Dashboard
		</h1>
		<img src="${url_header }" alt="header" />
	</header>

	<section class="section__container booking__container">
		<div class="booking__nav">
			<%--         <span>Economy Class</span>
        <span>Business Class</span>
        <span>First Class</span> --%>

			<select class="form-select form-select-lg mb-3"
				aria-label="Large select example">
				<option selected>Flight Class</option>
				<option value="1">Economy</option>
				<option value="2">Business</option>
				<option value="3">Premium</option>
			</select>
		</div>


		<s:url var="url_search" value="/dataSearch" />
		<div id="error"></div>
		<form action="${url_search}" method="post" id="form">
			<div class="form__group">
				<span><i class="ri-map-pin-line"></i></span>
				<div class="input__content">
					<div class="input__group">

						<input type="text" placeholder="From"  id="freeText"  pattern="[A-Z a-z]+"  title="Only alphabetic characters are allowed" name="freeText" required/>
						<div class="error"></div>

					</div>
					
					<p>Where are you?</p>
				</div>
			</div>

			<div class="form__group">
				<span><i class="ri-map-pin-line"></i></span>
				<div class="input__content">
					<div class="input__group">

						<input type="text" placeholder="to" id="freeText2"  pattern="[A-Za-z]+"   title="Only alphabetic characters are allowed" name="freeText2" required/>
						 <div class="error"></div>

		 
					</div>
					
					<p>Where are you going?</p>
				</div>
			</div>


			<div class="form__group">
				<span><i class="ri-calendar-line"></i></span>
				<div class="input__content">
					<div class="input__group">

						<input  placeholder="DeapartureTime" type="date"  id="freeText3" required/>
						 <div class="error"></div>


					</div>
					
					<p>When are you going?</p>
				</div>
			</div>
			<div class="form__group">
				<span><i class="ri-calendar-line"></i></span>
				<div class="input__content">
					<div class="input__group">


						<input  placeholder="ReturnTime" type="date" />
						 

					</div>
					
					<p>When will you return?</p>
				</div>
			</div>

			<button class="btn" type="submit">
				<i class="ri-search-line"> Search</i>
			</button>
		</form>
	</section>



	<footer class="footer">
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
</body>

</html>
