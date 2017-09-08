
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<style>
body {
	background-color:black;
	background-image:
		url("https://www.transparenttextures.com/patterns/xv.png");}
</style>
<body>

	<div class="container">
		<h2 style="text-align: center; color: red;">Add Product</h2>
		<div class="col-lg-12">
			<div class="row">
				<br>
				<springForm:form action="${contextRoot}/saveproduct" modelAttribute="product"
					enctype="multipart/form-data" method="POST" class="form-horizontal">




					<div class="form-group">
						<springForm:label class="control-label col-sm-4"
							style="text-align:right;color:white;" path="pname">PRODUCTNAME</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">

							<springForm:input class="form-control" path="pname" />

							<springForm:errors path="pname">
								<p style="color: red">Enter a product name</p>
							</springForm:errors>

						</div>
					</div>

					<div class="form-group">
						<springForm:label class="control-label col-sm-4"
							style="text-align:right;color:white" path="price">PRICE</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">

							<springForm:input class="form-control" path="price" />
							<springForm:errors path="price">
								<p style="color: red">Need to be filled</p>
							</springForm:errors>

						</div>
					</div>


					<div class="form-group">
						<springForm:label path="brandname" style="text-align:right;color:white;"
							class="control-label col-sm-4">BRANDNAME</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">

							<springForm:input class="form-control" path="brandname" />
							<springForm:errors path="brandname">
								<p style="color: red">Enter a brand name</p>
							</springForm:errors>

						</div>
					</div>


					<div class="form-group">
						<springForm:label path="stock" style="text-align:right;color:white;"
							class="control-label col-sm-4">STOCK</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">

							<springForm:input class="form-control" path="stock" />
							<springForm:errors path="stock">
								<p style="color: red">Need to be filled</p>
							</springForm:errors>


						</div>
					</div>
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

								<input type="submit" class="btn btn-primary btn-lg"
									value="Submit" />
							</div>
						</div>
					</div>

				</springForm:form>



			</div>
		</div>
	</div>
</body>
</html>