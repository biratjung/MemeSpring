<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<style>
#imagecontainer {
	width:900px;
	margin:0 auto;
	border:1px solid;
}
.clear {
	clear:both;
}
.imagecontainer {
	float:left;
	width:295px;
}
</style>
<title>Welcome</title>
<link href="<c:url value='/resources/css/mystyle.css' />" rel="stylesheet" type="text/css">
</head>
<body>
<img src="<c:url value='/resources/images/logo.png' />" />
<h2>Hello! ${username} Please view your saved images</h2>
<h3 class="error"><c:if test="${param.message != null}">  <%= request.getParameter("message") %></c:if></h3>


<h2>Your Selected Images</h2>

<div id="imagecontainer">
<sf:form method="POST" modelAttribute="allorders" commandName="allorders">
<table>
<c:forEach var="element" items="${allsaveimages.Images}" varStatus="theCount" >
      
      <tr>
      	<td>${theCount.index+1}</td>
        <td>${element.name}</td>
        <td><img src="<c:url value= '/uploads/${element.imageUrl}' />" width=260 height=195/></td>
        <td><sf:input path="saveImages[${theCount.index}].orderedQuantity" size="5" />
        <sf:input path="saveImages[${theCount.index}].id" type="hidden" /></td>
      </tr>      
 </c:forEach>   
</table>
<input type="submit"  />
</sf:form>
</div>
</body>
</html>