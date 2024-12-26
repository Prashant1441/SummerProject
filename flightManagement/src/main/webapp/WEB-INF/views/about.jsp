<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Flight Management System</title>
    <s:url var="url_css" value="/static/css/about.css"/>
    <link rel="stylesheet" href="${url_css }" type="text/css">
</head>
<body>
<jsp:include page="include/menu.jsp"></jsp:include>
    <div class="about-section">
        <div class="container">
            <h2>About Thames Flight Management System</h2>
            <p>A Flight Management System (FMS) is a comprehensive website designed to facilitate the management of various aspects of airline operations.</p>
            <p>Key features of our FMS include:</p>
            <ul>
                <li>Flight scheduling and planning</li>
                <li>Passenger management</li>
                <li>Booking and reservation system</li>
                <li>Flight status monitoring</li>
                <li>Administrative tools for airline staff</li>
            </ul>
            <p>My FMS is built using modern technologies to ensure reliability and scalability.</p>
        </div>
    </div>
    <!-- Rest of the page content -->
    	<footer class="footer">
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>
