<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Welcome</title>
<link href=" /resources/css/mystyle.css' />" rel="stylesheet" type="text/css">
</head>
<body>
<img src="<c:url value='/resources/images/logo.png' />" />
<h2>Hello! You need to login or register</h2>

<c:choose>
  <c:when  test="${not empty username}">
   welcome ${username} You can logout by clicking here <a href="<c:url value='/logout' />" >Log Out</a>
  <hr>
  

  <div id="imagecontainer">

<c:forEach var="element" items="${allimages}" >
      
        <div class="imagecontainer">
          <h2 style="text-align:center;">${element.caption}</h2>
	      <img src="<c:url value= '/uploads/${element.imageUrl}' />" width=250 height=270/>
	      <br>
        </div>
	    
	    </c:forEach>   
</div>

  
  </c:when>
  
  <c:otherwise>
    <h2>><a href="register">Click here to Register</a></h2>
	<h2>><a href="login">Click here to Login</a></h2>
  </c:otherwise>
</c:choose>

	  
                   
 

</body>
</html>
