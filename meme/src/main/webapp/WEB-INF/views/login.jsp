<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html>
<head> 
<title>Login</title>
<link href="<c:url value='/resources/css/mystyle.css' />" rel="stylesheet" type="text/css">
</head>
<body>
<header>
<div id="head">

<h1>Meme Collection</h1>

<div class="logo">
<img src="<c:url value='/resources/images/logo.jpg' />" width= 120px height=79px />
</div>

</div>
</header>
	<div class="login">
  <div class="heading">
    <h2>Sign in</h2>
    <form role="form" action="j_spring_security_check" method="post">
                          <h3>  Login </h3>
                              
                              <input type="text" id="j_username" name="j_username"  placeholder="Username" required autofocus>
                              
                              <input type="password" id="j_password" name="j_password"  placeholder="Password" required>
                           
                             
                              <p style='color:red;'>${message}</p> 
                           
                          
                          <button type="submit" name="login">Sign in</button>
                        </form>


 		</div>
 </div>
 </body>
 </html>