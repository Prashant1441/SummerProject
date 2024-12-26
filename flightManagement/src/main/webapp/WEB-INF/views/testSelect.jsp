<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
    .search-container {
    position: relative;
    width: 300px; /* Adjust the width as needed */
    margin-bottom: 20px;
}

.search-input {
    width: 100%;
    padding: 10px 30px 10px 10px;
    box-sizing: border-box;
}

.search-icon {
    position: absolute;
    right: 10px;
    top: 50%;
    transform: translateY(-50%);
    cursor: pointer;
    width: 20px; /* Adjust the size as needed */
    height: 20px; /* Adjust the size as needed */
}

.additional-fields {
    margin-bottom: 20px;
}

.field-input {
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
    margin-bottom: 10px;
}

.search-button {
    padding: 10px 20px;
    background-color: #007BFF; /* Adjust the background color as needed */
    color: white;
    border: none;
    cursor: pointer;
}

.search-button:hover {
    background-color: #0056b3; /* Adjust the hover color as needed */
}
    
    </style>
</head>
<body>
    <form:form action="" method="get" modelAttribute="">
        <div class="search-container">
            <form:input path="" id="searchQuery" class="search-input" placeholder="Search..."/>
            <img src="search-icon.png" alt="Search" class="search-icon">
        </div>
        <!-- Add any additional fields here -->
        <div class="additional-fields">
            <form:input path="field1" id="field1" placeholder="Field 1" class="field-input"/>
            <form:input path="field2" id="field2" placeholder="Field 2" class="field-input"/>
        </div>
        <input type="submit" value="Search" class="search-button">
    </form:form>
</body>
</html>
