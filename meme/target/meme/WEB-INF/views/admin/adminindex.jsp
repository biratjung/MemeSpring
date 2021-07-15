<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
#toplinks {
	color:green;
	padding-left:20px;
	font-size:20px;
}
</style>
<meta charset="UTF-8">
<title>Meme admin page</title>
<link href=" /resources/css/mystyle.css' />" rel="stylesheet" type="text/css">
</head>
<body>

<h2>Welcome to admin panel  <a href="<c:url value='/logout' />" >Log Out</a></h2>

<a href="<c:url value='/admin/image' />" id="toplinks">Upload Image</a>

</body></html>