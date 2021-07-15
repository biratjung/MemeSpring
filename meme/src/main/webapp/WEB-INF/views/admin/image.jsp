<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<link href="<c:url value='/resources/css/mystyle.css' />" rel="stylesheet" type="text/css">

<meta charset="UTF-8">
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
<h2>Welcome<a href="<c:url value='/logout' />" ><br>Log Out</a></h2>


<h3>Add new image</h3>
<h3 style="color:green"><c:if test="${param.message != null}">  <%= request.getParameter("message") %></c:if></h3>
 <sf:form method="POST" modelAttribute="img" enctype="multipart/form-data" commandName="img">
		        
		        <table>
				
				<tr>
				<th>Caption</th>
				<td><sf:input path="caption" size="20"/>
				</br>
				<sf:errors path="caption" cssClass="error" />
				</td>
				</tr>
				
				<tr>
				<th>Uploader</th>
				<td><sf:input path="uploader" size="20"/>
				</br>
				<sf:errors path="uploader" cssClass="error" />
				</td>
				</tr>
				

				<tr>
				<th>Image</th>
				<td><sf:input path="imageFile" type="file"/>
				</br>
				<sf:errors path="imageFile" cssClass="error" />
				</td>
				</tr>
				
				
				
				<tr>
				<th></th>
				<td>
				<input type="submit" /> </td>
				</tr>
				
		</table>
		       
</sf:form>
</body>
</html>
  