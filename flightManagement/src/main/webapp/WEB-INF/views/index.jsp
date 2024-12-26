<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@3.4.0/fonts/remixicon.css"
	rel="stylesheet" />

<style type="text/css">
.err {
	color: red;
}
.success {
	color: blue;
}
.error{
color:red;

}

.password-container {
    position: relative;
    

}

.password-input {
    padding-right: 30px; /* Adjust this value based on your image width */
}

.toggle-password {
    position: absolute;
    right: 10px;
    top: 10px;
    width:24px;
    transform: translateY(-50%);
    cursor: pointer;
}




</style>
<s:url var="url_css" value="/static/css/user.css" />
<s:url var="url_pass" value="/static/img/eye-close.png" />
<link href="${url_css }" rel="stylesheet" type="text/css">

<s:url var="url_header" value="/static/img/header.jpg" />


<title>Your flight Management</title>
<s:url var="url_logout" value="/logout" />
<s:url var="url_reg" value="/regx" />
<s:url var="url_home" value="/home" />
<s:url var="url_bookFlight" value="/bookFlight" />
</head>
<body>
	<jsp:include page="include/menu.jsp"></jsp:include>
	<header class="section__container header__container">
		<h1 class="section__header">
			Find And Book<br />A Great Experience
		</h1>
		<img src="${url_header }" alt="header" />
	</header>

	<section class="section__container booking__container">
		<div class="booking__nav"></div>
		<s:url var="url_login" value="/login" />
		<c:if test="${err!=null }">
			<p class="err">${err }</p>
		</c:if>

		<c:if test="${param.act eq 'lo' }">
			<p class="success">Logout Successfully!</p>
		</c:if>
		<c:if test="${param.act eq 'REG' }">
			<p class="success">Registerd Successfully!</p>
		</c:if>
			<c:if test="${param.act eq 'send' }">
			<p class="success">your message has been send.</p>
		</c:if>
	
		
		<h2>Login</h2>
		<f:form action="${url_login }" modelAttribute="command">
	
				<f:errors path="loginName" cssClass="error"></f:errors>
		
			<div class="form__group">
			
				<span><i class="ri-user-3-line"></i></span>
				<div class="input__content">
					<div class="input__group">
						<f:input path="loginName" placeholder="UserName"  />
						
						
					

					</div>
					<p>fill your username.</p>
				</div>
			</div>
			
			<f:errors path="password" cssClass="error"></f:errors>
			
			<div class="form__group">
			
				<span><i class="ri-lock-line"></i></span>
				<div class="input__content">
				
					<div class="input__group">
						<%-- <f:password path="password" placeholder="Password" /> --%>
						
						<f:password path="password" id="password" value="${command.password}" />
                    <img src="${url_pass }" alt="Toggle Password" class="toggle-password" onclick="togglePassword()" class="pass_icon">
                    
						
						
					</div>
					
					<p>Add password</p>
				</div>
			</div>
 <!-- <input type="button" id="toggleButton" onclick="togglePassword()"  value="Show Password"/>  -->
			<button class="btn">
				login</i>
			</button>
		</f:form>
	</section>

	<section class="section__container plan__container">
		<p class="subheader">TRAVEL SUPPORT</p>
		<h2 class="section__header">Plan your travel with confidence</h2>
		<p class="description">Find help with your bookings and travel
			plans, and seee what to expect along your journey.</p>
		<div class="plan__grid">
			<div class="plan__content">
				<span class="number">01</span>
				<h4>Travel Requirements for Dubai</h4>
				<p>Stay informed and prepared for your trip to Dubai with
					essential travel requirements, ensuring a smooth and hassle-free
					experience in this vibrant and captivating city.</p>
				<span class="number">02</span>
				<h4>Multi-risk travel insurance</h4>
				<p>Comprehensive protection for your peace of mind, covering a
					range of potential travel risks and unexpected situations.</p>
				<span class="number">03</span>
				<h4>Travel Requirements by destinations</h4>
				<p>Stay informed and plan your trip with ease, as we provide
					up-to-date information on travel requirements specific to your
					desired destinations.</p>
			</div>
			<s:url var="url_plan1" value="/static/img/plan-1.jpg" />
			<s:url var="url_plan2" value="/static/img/plan-2.jpg" />
			<s:url var="url_plan3" value="/static/img/plan-3.jpg" />
			<div class="plan__image">
				<img src="${url_plan1}" alt="plan" /> <img src="${url_plan2}"
					alt="plan" /> <img src="${url_plan3}" alt="plan" />
			</div>
		</div>
	</section>

<%-- 	<section class="memories">
		<div class="section__container memories__container">
			<div class="memories__header">
				<h2 class="section__header">Travel to make memories all around
					the world</h2>
			
			</div>
			<div class="memories__grid">
				<div class="memories__card">
					<span><i class="ri-calendar-2-line"></i></span>
					<h4>Book & relax</h4>
					<p>With "Book and Relax," you can sit back, unwind, and enjoy
						the journey while we take care of everything else.</p>
				</div>
				<div class="memories__card">
					<span><i class="ri-shield-check-line"></i></span>
					<h4>Smart Checklist</h4>
					<p>Introducing Smart Checklist with us, the innovative solution
						revolutionizing the way you travel with our airline.</p>
				</div>
				<div class="memories__card">
					<span><i class="ri-bookmark-2-line"></i></span>
					<h4>Save More</h4>
					<p>From discounted ticket prices to exclusive promotions and
						deals, we prioritize affordability without compromising on
						quality.</p>
				</div>
			</div>
		</div>
	</section> --%>

	<section class="section__container lounge__container">
		<s:url var="url_lounge1" value="/static/img/lounge-1.jpg" />
		<s:url var="url_lounge2" value="/static/img/vatty.jpg" />
		<div class="lounge__image">
			<img src="${url_lounge1 }" alt="lounge" /> <img
				src="${url_lounge2 }" alt="lounge" />
		</div>
		<div class="lounge__content">
			<h2 class="section__header">Unaccompanied Minor Lounge</h2>
			<div class="lounge__grid">
				<div class="lounge__details">
					<h4>Experience Tranquility</h4>
					<p>Serenity Haven offers a tranquil escape, featuring
						comfortable seating, calming ambiance, and attentive service.</p>
				</div>
				<div class="lounge__details">
					<h4>Elevate Your Experience</h4>
					<p>Designed for discerning travelers, this exclusive lounge
						offers premium amenities, assistance, and private workspaces.</p>
				</div>
				<div class="lounge__details">
					<h4>A Welcoming Space</h4>
					<p>Creating a family-friendly atmosphere, The Family Zone is
						the perfect haven for parents and children.</p>
				</div>
				<div class="lounge__details">
					<h4>A Culinary Delight</h4>
					<p>Immerse yourself in a world of flavors, offering
						international cuisines, gourmet dishes, and carefully curated
						beverages.</p>
				</div>
			</div>
		</div>
	</section>

	<section class="section__container travellers__container">
		<h2 class="section__header">Best travellers of the month</h2>
		<s:url var="url_traveller1" value="/static/img/traveller-1.jpg" />
		<s:url var="url_client1" value="/static/img/kapil.jpg" />
		<div class="travellers__grid">
			<div class="travellers__card">
				<img src="${url_traveller1 }" alt="traveller" />
				<div class="travellers__card__content">
					<img src="${url_client1 }" alt="client" />
					<h4>Kapil Pradhan</h4>
					<p>Dubai</p>
				</div>
			</div>
			<s:url var="url_traveller2" value="/static/img/traveller-2.jpg" />
			<s:url var="url_client2" value="/static/img/kirtan.jpg" />
			<div class="travellers__card">
				<img src="${url_traveller2 }" alt="traveller" />
				<div class="travellers__card__content">
					<img src="${url_client2 }" alt="client" />
					<h4>Kirtan Shrestha</h4>
					<p>Paris</p>
				</div>
			</div>
			<s:url var="url_traveller3" value="/static/img/traveller-3.jpg" />
			<s:url var="url_client3" value="/static/img/isha.jpg" />
			<div class="travellers__card">
				<img src="${url_traveller3 }" alt="traveller" />
				<div class="travellers__card__content">
					<img src="${url_client3 }" alt="client" />
					<h4>Isha Maharjan</h4>
					<p>Singapore</p>
				</div>
			</div>
			<s:url var="url_traveller4" value="/static/img/traveller-4.jpg" />
			<s:url var="url_client4" value="/static/img/motay.jpg" />
			<div class="travellers__card">
				<img src="${url_traveller4 }" alt="traveller" />
				<div class="travellers__card__content">
					<img src="${url_client4 }" alt="client" />
					<h4>Samwek shakya</h4>
					<p>Malaysia</p>
				</div>
			</div>
		</div>
	</section>


	<footer class="footer">
		<div class="section__container footer__container">
			<div class="footer__col">
				<h3>Thames</h3>
				<p>Where Excellence Takes Flight. With a strong commitment to
					customer satisfaction and a passion for air travel, Thames Airlines
					offers exceptional service and seamless journeys.</p>
				<p>From friendly smiles to state-of-the-art aircraft, we connect
					the world, ensuring safe, comfortable, and unforgettable
					experiences.</p>
			</div>
			<div class="footer__col">
				<h4>INFORMATION</h4>
				<p>Home</p>
				<p>About</p>
				<p>Offers</p>
				<p>Seats</p>
				<p>Destinations</p>
			</div>
			<div class="footer__col">
				<h4>CONTACT</h4>
				<p>Support</p>
				<p>Media</p>
				<p>Socials</p>
			</div>
		</div>
		<div class="section__container footer__bar">
			<p>Copyright © 2024 Thames International college. All rights
				reserved.</p>
			<div class="socials">
				<span><i class="ri-facebook-fill"></i></span> <span><i
					class="ri-twitter-fill"></i></span> <span><i
					class="ri-instagram-line"></i></span> <span><i
					class="ri-youtube-fill"></i></span>
			</div>
		</div>
	</footer>
	 <script type="text/javascript">
	 function togglePassword() {
		    var passwordField = document.getElementById("password");
		    if (passwordField.type === "password") {
		        passwordField.type = "text";
		    } else {
		        passwordField.type = "password";
		    }
		}
    </script>
</body>
</html>