<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="springForm"
	uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>View Product</title>
<style>
body {
	font-family: times new roman;
	color: red;
}

td {
	font-family: times new roman;
	color: black;
	font-size: large;
}
</style>
</head>
<body>
<%@ include file="header.jsp"%>
<br>
<br>
	<div>
		<div class="container">
			<h3 style="text-align: center; color: red;">DETAILS OF PRODUCT 
				</h3>
			<table
				class="table table-responsive  table-bordered">
				<tr>
					<td>Product Name</td>
					<td>${products.pname}</td>
				</tr>
				<c:url value="/resources/image/${products.pid }.jpg" var="url"></c:url>

				<tr>
					<td>Product Image</td>
					<td><img src="${url}" height="100" width="80"></td>
				</tr>
				<tr>
					<td>Brand Name</td>
					<td>${products.brandname}</td>
				</tr>

				<tr>
					<td>Price</td>
					<td>${products.price}</td>
				</tr>
				<tr>
					<td>Stock</td>
					<td>${products.stock}</td>
				</tr>


			</table>
			<c:if test="${products.stock==0 }">
Out Of Stock
</c:if>
			<c:if test="${products.stock!=0 }">
				<c:url value="/cart/addtocart/${products.pid}" var="carturl"></c:url>

				<form action="${carturl}">
					<button type="submit" class="btn btn-primary btn-lg">
						<span class="glyphicon glyphicon-shopping-cart"></span> ADD TO
						CART
					</button>

				</form>
			</c:if>
			<br>
			<br>
			<div class="col-lg-12">
				<c:url value="/productlist" var="url1"></c:url>
				<a href="${url1}" style="text-align: center; color: black;"><span class="glyphicon glyphicon-arrow-left"></span> BACK TO PRODUCT LIST</a><br>
			</div>
		</div>
	</div>

</body>
</html>