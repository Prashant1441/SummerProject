<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html lang="en">



<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Flights lists</title>
    <s:url var="url_css" value="static/css/flightlist.css"/>
     <link rel="stylesheet" type="text/css" href= "${url_css }"> 
<style>
.err{
color:red;}
</style>
  </head>

<body>
	
	
 <jsp:include page="include/menu.jsp"></jsp:include>
  <main class="" id="customers_table">
      
        <section class="table__header">
        	
            <h1> Flights</h1>
            	<c:if test="${empty flightList }">
				<p class="err">No flights found.</p>
			</c:if>
           <c:if test="${param.act eq 'saved' }">
           <p class=success> flights added successfully.</p>
           </c:if>
        
            <div class="export__file">
               
            </div>
        </section>
        <section class="table__body">
            <table>
                <thead>
                    <tr>
                    	<th> SN</th>
                        <th> FlightId</th>
                       <th> Location </th>
                        <th>  Departure Date</th>
                        <th> Time </th>
                        
                         <th> TicketPrice</th>
                         <th>Action </th>
                      
                      
        
                    </tr>
                </thead>
                <tbody>
                  <c:forEach var="f" items="${flightList}"  varStatus="st">
                    <tr>
                    
                
                    <td>${st.count }</td>
                        <td>${f.flightId }</td>
                        <td>${f.destination} to ${f.destinationTwo}</td>
                        <td>${f.departure}</td>
                        <td>${f.timeIn } -  ${f.timeOut }</td>
                        <td ><p class="">Rs 395</p></td>
                        <s:url var="url_book" value="/user/book">
                        <s:param name="fid" value="${f.flightId }" />
                        </s:url>
                        <s:url var="url_del" value="/user/del">
                        <s:param name="fid" value="${f.flightId }" />
                        </s:url>

				
                        <td><button  class="btn" onclick="location.href='${url_book}'">Book</button>  </td>
                        
                        
                        
                        
                      
                    </tr>
                    </c:forEach> 
                    
                </tbody>
            </table>

        </section>
           </main>
   
</body>

</html>