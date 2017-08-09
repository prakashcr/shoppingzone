
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="springForm"
	uri="http://www.springframework.org/tags/form"%>

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
<body>
	<div class="container">
		<h2 style="text-align: center; color: red;">Add Product</h2>
		<div class="col-lg-12">
			<div class="row">
				<br>
				<springForm:form action="./saveproduct" modelAttribute="product"
					method="POST" class="form-horizontal">



					<div class="form-group">
						<springForm:label class="control-label col-sm-4"
							style="text-align:right" path="pname">PRODUCTNAME</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">

							<springForm:input class="form-control" path="pname" />
						</div>
					</div>

					<div class="form-group">
						<springForm:label class="control-label col-sm-4"
							style="text-align:right" path="price">PRICE</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">

							<springForm:input class="form-control" path="price" />
						</div>
					</div>



					<div class="form-group">
						<springForm:label path="stock" style="text-align:right"
							class="control-label col-sm-4">STOCK</springForm:label>
						<div class="control-label col-sm-4 col-sm-4">

							<springForm:input class="form-control" path="stock" />

						</div>
					</div>

					<br>
			
					<div class="form-group">
						<div class="col-sm-12">
							<div class="text-center">

								<input type="submit" class="btn btn-info btn-lg" value="Submit" />
							</div>
						</div>
					</div>

				</springForm:form>



			</div>
		</div>
	</div>
</body>
</html>