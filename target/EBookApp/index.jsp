<%@page import="com.DB.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook IndexPage</title>
<%@ include file="all_component/allcss.jsp"%>
<style type="text/css">
.back-img {
	background: url("images/book21.jpg");
	height: 50vh;
	widows: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background-color: #f5ebee;
}
</style>
</head>
<body style="background-color: #c9c9c7">
	<%@ include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-white ">E-Book Management System</h2>
	</div>
	 <%-- <%Connection con=DBConnection.getCon();
	out.println(con);
	%> <!-- --%>  <!-- for check --%> --> --%> -->
	
	<!-- for recent books  -->
	<div class="container">
		<h3 class="text-center">Recent Books</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3 mt-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm text-white"> View All</a>
		</div>
	</div>
	<!-- End recent book -->
	<hr>
	<!-- for New books  -->
	<div class="container">
		<h3 class="text-center">New Books</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3 mt-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<a href="" class="btn btn-danger btn-sm ml-2"><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm text-white"> View All</a>
		</div>
	</div>
	<!-- End New book -->
	<hr>
	<!-- for Old books  -->
	<div class="container">
		<h3 class="text-center">Old Books</h3>
		<div class="row ">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<!-- <a href="" class="btn btn-danger btn-sm ml-3">Add Cart</a> -->
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<!-- 						<a href="" class="btn btn-danger btn-sm ml-3">Add Cart</a>
 -->
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<!-- <a href="" class="btn btn-danger btn-sm ml-3">Add Cart</a> -->
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<!-- <a href="" class="btn btn-danger btn-sm ml-3">Add Cart</a> -->
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3 mt-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Book/b2.jpg" style="width: 200px; height: 260px"
							class="img-thumblin">
						<p>FireBorn Series</p>
						<p>By Aisling Fowler</p>
						<p>Categories:New</p>
						<div class="row ">
							<!-- <a href="" class="btn btn-danger btn-sm ml-3">Add Cart</a> -->
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">299</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm text-white"> View All</a>
		</div>
	</div>
	<!-- End Old book -->

	<%@include file="all_component/footer.jsp"%>
</body>
</html>