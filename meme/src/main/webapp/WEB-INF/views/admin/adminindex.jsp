<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Meme admin page</title>
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
<h2>Welcome to admin panel </h2>
<h2><a href="<c:url value='/logout' />"> Log Out</a></h2>

<a href="<c:url value='/admin/image' />"> <button class="button"> Upload Image </button></a>

</body></html>