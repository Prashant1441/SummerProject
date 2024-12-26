<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <s:url var="menu_css" value="/static/css/user.css"/>
    <link href="${menu_css}" rel="stylesheet" type="text/css">
</head>
<s:url var="url_logout" value="/logout"/>
<s:url var="url_flightForm" value="/flight_form"/>
    <s:url var="url_reg" value="/regx"/>
    <s:url var="url_home" value="/home"/>
    <s:url var="url_bookFlight" value="/bookFlight"/>
     <s:url var="url_aflightList" value="/adminflightList"/>
    <s:url var="url_flightList" value="/flightList"/>
     <s:url var="url_home" value="/index"/>
     <s:url var="url_ahome" value="/admin/dashboard"/>
     <s:url var="url_uhome" value="/user/dashboard"/>
      <s:url var="url_users" value="/users"/>
       <s:url var="url_about" value="/about"/>
        <s:url var="url_contact" value="/contact"/>
<body>
    
        
            <c:choose>
                <c:when test="${empty sessionScope.userId}">
<nav>
      <div class="nav__logo"><a href="${url_home }">Thames<br> International</a></div>
      <ul class="nav__links">
        <li class="link"><a href="${url_home }">Home</a></li>
        <li class="link"><a href="${url_about }">About</a></li>
        <li class="link"> <a href="${ url_reg}">Register</a></li>
         <li class="link"><a href="${url_about }">Offers</a></li>
        
      </ul>
      
      <button  class="btn" onclick="location.href='${url_contact}'">Contact</button>
      
    </nav>                </c:when>
                <c:when test="${sessionScope.role == 1}">
                     <nav>
      <div class="nav__logo"><a href="${url_ahome }">Thames<br> International</a></div>
      <ul class="nav__links">
        <li class="link"><a href="${url_ahome }">Home</a></li>
        <li class="link"><a href="${ url_users}"> userList</a></li>
        <li class="link"><a href="${url_flightForm}">Add Flights</a></li>
        <li class="link"><a href="${ url_flightList}"> Flights list</a></li>
        <li class="link"><a href="${url_logout}">logout</a></li>
      </ul>
      <button  class="btn" onclick="location.href='${url_contact}'">Contact</button>
      
    </nav>
                </c:when>
                <c:when test="${sessionScope.role == 2}">
     <nav>
      <div class="nav__logo"><a href="${url_uhome }">Thames<br> International</a></div>
      <ul class="nav__links">
        <li class="link"><a href="${url_uhome }">Home</a></li>
        <li class="link"><a href="${url_about }">About</a></li>
        <li class="link"><a href="${url_flightList }">My Flights</a></li>
        <li class="link"><a href="${url_logout}">logout</a></li>
      </ul>
       <button  class="btn" onclick="location.href='${url_contact}'">Contact</button>
    </nav>
                </c:when>
            </c:choose>
            
      
</body>
</html>
