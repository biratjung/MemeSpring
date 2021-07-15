<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<title>Welcome</title>
<link href="<c:url value='/resources/css/mystyle.css' />" rel="stylesheet" type="text/css">
</head>


<body>
<header>
<div id="head">

<h1>Meme Collection</h1>

<div class="logo">
<img src="<c:url value='/resources/images/logo.jpg' />" width= 120px height= 79px />
</div>

</div>
</header>
<h2>Hello! Welcome to our meme collection!!</h2>

<c:choose>
  <c:when  test="${not empty username}">
   welcome ${username} You can logout by clicking here <a href="<c:url value='/logout' />" >Log Out</a>
   <hr>
   
  <div id="imagecontainer">

<c:forEach var="element" items="${allimages}" >
      
        <div class="imagecontainer">
        
          <h2 style="text-align:center;">${element.caption}</h2>
	      <img src="<c:url value= '/uploads/${element.imageUrl}' />" width=300px height=350px/>
	      <br>
        </div>
	    
	    </c:forEach>   
</div>

  
  </c:when>
  
   
  <c:otherwise>
  <div id="option">
    <a href="register"> <button class="button"> Register </button></a><br>
	<a href="login"> <button class="button">Login </button></a>
  </div>
  </c:otherwise>
</c:choose>
 
	  
                   
 

</body>
</html>
