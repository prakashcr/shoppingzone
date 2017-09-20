<<<<<<< HEAD
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="springForm"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="rc" value="${pageContext.request.contextPath}" />
<title>Cart</title>
<style>
th {
	font-family: times new roman;
	color: red;
}

td {
	font-family: times new roman;
	color: black;
}
</style>
</head>
<body>
	<c:set value="${rc}/resources/image" var="url" />
	<h2 style="text-align: center; color: black;">MY CART</h2>
	<div class="container">
		<div class="img-thumbnail">

			<table class="table table-responsive" align="left">
				<thead>
					<tr>
						<th>IMAGES</th>
						<th>PRODUCT NAME</th>
						<th>QTY</th>
						<th>SUB COST</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cart.cartItems}" var="c">
						<tr>
							
						<td><img src="${url}/${c.product.pid}.jpg" height="100" width="80"></td>
							<td>${c.product.pname}</td>
							<td>${c.subQty}</td>
							<td>${c.subTotalCost}</td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<pre>
			Total Cost : Rs. ${cart.grandTotal}                    <a href="#"
					class="btn btn-danger">Check out</a>
		</pre>

		</div>
	</div>

</body>
=======
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="springForm"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="rc" value="${pageContext.request.contextPath}" />
<title>Cart</title>
<style>
th {
	font-family: times new roman;
	color: red;
}

td {
	font-family: times new roman;
	color: black;
}
</style>
</head>
<body>
	<c:set value="${rc}/resources/image" var="url" />
	<h2 style="text-align: center; color: black;">MY CART</h2>
	<div class="container">
		<div class="img-thumbnail">

			<table class="table table-responsive" align="left">
				<thead>
					<tr>
						<th>IMAGES</th>
						<th>PRODUCT NAME</th>
						<th>QTY</th>
						<th>SUB COST</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cart.cartItems}" var="c">
						<tr>
							
						<td><img src="${url}/${c.product.pid}.jpg" height="100" width="80"></td>
							<td>${c.product.pname}</td>
							<td>${c.subQty}</td>
							<td>${c.subTotalCost}</td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<pre>
			Total Cost : Rs. ${cart.grandTotal}                    <a href="#"
					class="btn btn-danger">Check out</a>
		</pre>

		</div>
	</div>

</body>
>>>>>>> origin/master
</html>