<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contact</title>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
        crossorigin="anonymous">
    <style>
        .styled-button {
            background-color: #3d5cb8; /* Background color */
            border: none; /* Remove default border */
            color: white; /* White text */
            padding: 15px 32px; /* Padding */
            text-align: center; /* Center the text */
            text-decoration: none; /* Remove default underline */
            display: inline-block; /* Inline-block element */
            font-size: 16px; /* Font size */
            margin: 4px 2px; /* Margins */
            cursor: pointer; /* Pointer cursor on hover */
            border-radius: 0; /* No rounded corners to make it square */
            box-shadow: 0 4px #999; /* Shadow */
            transition-duration: 0.4s; /* Transition effect */
        }

        .styled-button:hover {
            background-color: #2e4490; /* Darker background on hover */
            box-shadow: 0 6px #666; /* Deeper shadow on hover */
            transform: translateY(-2px); /* Slightly lift the button */
        }

        .styled-button:active {
            background-color: #27397d; /* Even darker background on click */
            box-shadow: 0 2px #666; /* Reduced shadow on click */
            transform: translateY(2px); /* Slightly push the button down */
        }
    </style>
</head>
<body>
    <jsp:include page="include/menu.jsp"></jsp:include>
    <s:url var="url_sendMessage" value="/message" />
    
    <div class="container-sm">
        <h1 align="center">Send us your Message</h1>
        <form action="${url_sendMessage}" method="post">
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Name</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="FullName" pattern="[A-Za-z ]+" required>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput12" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleFormControlInput12" placeholder="name@example.com" required>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea13" class="form-label">Example textarea</label>
                <textarea class="form-control" id="exampleFormControlTextarea13" rows="3" placeholder="Message" required></textarea>
            </div>
            <button type="submit" class="styled-button p-4 mb-5">Send Message</button>
        </form>
    </div>
    <footer class="footer">
        <jsp:include page="include/footer.jsp"></jsp:include>
    </footer>
</body>
</html>
