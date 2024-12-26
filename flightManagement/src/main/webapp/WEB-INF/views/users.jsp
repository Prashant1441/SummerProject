<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<s:url var="url_css"  value="/static/css/flightlist.css"/>
<link href="${url_css }" rel="stylesheet" type="text/css">
</head>
<s:url var="url_js" value="/static/js/jquery.js"/>
<script type="text/javascript" src="${url_js }"></script>
<script>
 function changeStatus(uId, lStatus){
	$.ajax({
		url:'achangeStatus',
		data:{userId:uId, loginStatus:lStatus} ,
		success:function (data){
			alert('data');
		}
		
	});
	 
 }



</script>
<s:url var="url_img" value="/static/img/img.jpg"/>  
<body background="">



 <jsp:include page="include/menu.jsp"></jsp:include>
<main class="" id="customers_table">
      
        <section class="table__header">
        	
            <h1> Users Lists</h1>
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
                    	<th> SN <span class="icon-arrow">&UpArrow;</span></th>
                       
                        <th> UserId </th>
                       <th> Phone</th>
                        <th> Email </th>
                        <th> LoginName</th>
                        <th> Address</th>
                         <th> LoginStatus </th>
                        
                      
                      
        
                    </tr>
                </thead>
                <tbody>
                  <c:forEach var="f" items="${users}"  varStatus="st">
                    <tr>
                    
                
                    <td>${st.count }</td>
                        
                        <td>${f.userId}</td>
                        <td>${f.phone } </td>
                        <td>${f.email}</td>
                        <td>${f.loginName}</td>
                        <td > ${f.address}</td>  
                    
                        <td > 
                        <select id="id_${f.userId}" onchange="changeStatus(${f.userId},$(this).val())">
                        <option value="1"> Active</option>
                        <option value="2"> Block</option>
                          </select>
                          <script>
                          $('#id_${f.userId}').val(${f.loginStatus});
                          </script>
                        
                        </td>
                           
                      
                    </tr>
                    
                    </c:forEach>
                </tbody>
            </table>

        </section>
           </main>
   
</body>

</html>


<footer class="footer">
    <jsp:include page="include/footer.jsp"></jsp:include>
          </footer>
</body>
</html>