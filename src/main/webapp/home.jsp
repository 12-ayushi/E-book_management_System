<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>User: Home</h1>
	<c:if test="${ not empty userobj}">
		<h1>Name: ${userobj.name }</h1>
		<h1>Email: ${userobj.email }</h1>
		<p class="text-center text-success">${sucMsg }</p>
		<!-- <c:remove var="sucMsg" scope="session" /> -->
	</c:if>
</body>
</html>