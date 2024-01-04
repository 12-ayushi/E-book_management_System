<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook: Login</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="cord-body p-4">
					<h4 class="text-center">Login</h4>
					
					<%-- <c:if test="${ not empty userobj}">
					<h1>Name: ${userobj.name }</h1>
					<p class="text-center text-success">${sucMsg }</p>
					<c:remove var="sucMsg" scope="session"/>
					</c:if>  --%>
					
					<c:if test="${ not empty failedMsg}">
					<p class="text-center text-danger">${failedMsg }</p>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
					
						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp"  required="required" name="email">
								 
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
							</div>
							 
							<div class="text-cemter">
								<button type="submit" class="btn btn-primary">Login</button><br>
								<a href="register.jsp">Create Account</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>