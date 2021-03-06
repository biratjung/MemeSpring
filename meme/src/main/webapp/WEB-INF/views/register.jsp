<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Register</title>
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
<div id="main_right">
<h3 class="error"><c:if test="${param.message != null}">  <%= request.getParameter("message") %></c:if></h3>
	<h3>New User registration form</h3>
	<br/>
	<sf:form method="POST" modelAttribute="user" commandName="user">
		<fieldset>
			<table>
				
				<tr>
				<th><label for="user_screen_name">User name:</label></th>
				<td><sf:input path="username" size="20"  id="user_screen_name" class="form-control"/>
				<br>
				<sf:errors path="username" cssClass="error" />
				</td>
				</tr>

				
				<tr>
				<th><label for="user_password">Password:</label></th>
				<td><sf:password path="password" size="20" showPassword="true" id="user_password" class="form-control"/>
				<br>
				<sf:errors path="password" cssClass="error" />
				</td>
				</tr>
				
				
				<tr>
				<th><label for="user_password">First Name</label></th>
				<td><sf:input path="fname" size="20"  id="cards_prefix" class="form-control"/>
				<br>
				<sf:errors path="fname" cssClass="error" />
				</td>
				</tr>
				
				<tr>
				<th><label for="user_password">Last Name</label></th>
				<td><sf:input path="lname" size="20"  id="cards_prefix" class="form-control"/>
				<br>
				<sf:errors path="lname" cssClass="error" />
				</td>
				</tr>
				
				<tr>
				<th><label for="user_password">Email</label></th>
				<td><sf:input path="email" size="20"  id="cards_prefix" class="form-control"/>
				<br>
				<sf:errors path="email" cssClass="error" />
				</td>
				</tr>
				
				<tr>
				<th><label for="user_password">Address</label></th>
				<td><sf:input path="address" size="50"  id="cards_prefix" class="form-control"/>
				<br>
				<sf:errors path="address" cssClass="error" />
				</td>
				</tr>
				
				<tr>
				<th><label for="user_password">Phone no</label></th>
				<td><sf:input path="phoneno" size="20"  id="cards_prefix" class="form-control"/>
				<br>
				<sf:errors path="phoneno" cssClass="error" />
				</td>
				</tr>
				
				<tr>
				<th></th>
				<td>
				<input type="submit" class="btn btn-sm btn-danger btn-block btn-small"  /></td>
				</tr>
				<tr>
				<th></th>
				<td>
			    <sf:errors cssClass="error" delimiter="&lt;p/&gt;" />
				</td>
				</tr>
				
</table>
</fieldset>
</sf:form>

</div>
</body>
</html>
