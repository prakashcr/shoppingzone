<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="springForm"
	uri="http://www.springframework.org/tags/form"%>
	<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Product</title>
<style>
body {
	font-family: times new roman;
	color: red;
}
</style>
</head>
<body>
	<div>
		<div class="container">
			<h3 style="text-align:center; color:black;">Details about the Product</h3>
			<table class="table table-bordered">
			<tr>
					<td>Product Name</td>
					<td>${p.pname}</td>
				</tr>
				<c:url value="/resources/image/${p.pid }.jpg" var="url"></c:url>
			
				<tr>
					<td>Product Image</td>
					<td><img src="${url}" height="350" width="650"></td>
				</tr>
				<tr>
					<td>Brand Name</td>
					<td>${p.brandname}</td>
				</tr>	
				
				<tr>
					<td>Price</td>
					<td>${p.price}</td>
				</tr>
				<tr>
					<td>Stock</td>
					<td>${p.stock}</td>
				</tr>

			
			</table>
			

		</div>
	</div>

</body>
</html>