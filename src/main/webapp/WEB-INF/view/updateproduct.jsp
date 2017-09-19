<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="springForm"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="FALSE"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add product</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<c:url value="/all/product/updateProduct" var="url" />
</head>
<style>
body {
	background-color: #0d0057;
background-image: url("https://www.transparenttextures.com/patterns/xv.png");
	
}
</style>
<body>

	<div class="container">
		<h2 style="text-align: center; color: red;">UPDATE PRODUCT</h2>
		<div class="col-lg-12">
			<div class="row">
				<br>
				<springForm:form action="${url}" modelAttribute="products"
					enctype="multipart/form-data">
					<div class="form-group">
						<springForm:label class="control-label col-sm-4"
							style="text-align:right;color:white;" path="pname">PRODUCT NAME</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">
							<springForm:input path="pname" class="form-control"
								value="${products.pname}" placeholder="Enter product name" />
						</div>
					</div>
					<br>
					<br>
					<br>
					<springForm:input type="hidden" path="pid" />
					<div class="form-group">
						<springForm:label class="control-label col-sm-4"
							style="text-align:right;color:white;" path="Price">PRICE</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">
							<springForm:input path="price" class="form-control"
								value="${products.price}" placeholder="Enter price" />
						</div>
					</div>
					<br>
					<br>
					<div class="form-group">
						<springForm:label class="control-label col-sm-4"
							style="text-align:right;color:white;" path="brandname">BRANDNAME</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">
							<springForm:input path="brandname" class="form-control"
								value="${products.brandname}" placeholder="Enter Brandname" />
						</div>
					</div>
					<br>
					<br>
					<div class="form-group">
						<springForm:label class="control-label col-sm-4"
							style="text-align:right;color:white;" path="Stock">STOCK</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">
							<springForm:input path="stock" class="form-control"
								value="${products.stock}" placeholder="Enter stock" />
						</div>
					</div>
					<br>
					<br>
					<div class="form-group">
						<springForm:label class="control-label col-sm-4"
							style="text-align:right;color:white;" path="">SELECT CATEGORY</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">
							<springForm:select class="form-control" path="category.cid">
								<springForm:option value="0" label="----select category----" />
								<c:forEach var="c" items="${cat}">
									<springForm:option value="${c.cid}" label="${c.catname}" />
								</c:forEach>
							</springForm:select>

						</div>
					</div>
					<br>
					<br>
					<br>
					<div class="form-group">

						<springForm:label path="image" style="text-align:right;color:white;"
							class="control-label col-sm-4">UPLOAD AN IMAGE</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">
							<springForm:input type="file" path="image" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<div class="col-sm-12">
							<div class="text-center">
								<input type="submit" class="btn btn-info btn-lg" value="submit" />
							</div>
						</div>
					</div>
				</springForm:form>
			</div>
		</div>
	</div>
</body>
</html>