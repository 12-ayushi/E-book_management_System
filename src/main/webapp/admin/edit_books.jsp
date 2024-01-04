 

<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnection"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="jakarta.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
 
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:EditBooks</title>
<%@include file="allcss.jsp"%>
</head>
<body style="background-color: #f0f2f2">
	<%@include file="navbar.jsp"%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Books</h4>

						   

						<%-- <%
						int id = Integer.parseInt(request.getParameter("id"));
						BookDAOImpl dao = new BookDAOImpl(DBConnection.getCon());
						BookDtls b = dao.getBookById(id);
						%>
 --%>
						<form action="../edit_books" method="post">
						<input type="hidden" name="id" value="<%=b.getBookId()%>">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" value="<%=b.getBookName()%>"
									required="required" name="bname">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Author Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" value="<%=b.getAuthor()%>"
									required="required" name="author">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Price</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" value="<%=b.getPrice()%>"
									required="required" name="price">

							</div>

							<div class="form-group">
								<label for="inputState">Book Status</label> <select
									class="form-control" id="inputState" name="bstatus">


									<%
									if ("Active".equals(b.getStatus())) {
									%>
									<option value="Inactive">Active</option>
									<option value="Active">Inactive</option>
									<%
									} else {
									%>
									<option value="Active">Inactive</option>
									<option value="Inactive">Active</option>
									<%
									}
									%>
								</select>
							</div>
							 
							<button type="submit" class="btn btn-primary">Update</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 80px">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>