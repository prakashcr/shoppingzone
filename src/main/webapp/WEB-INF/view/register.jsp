
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="springForm"
	uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>CRICKET WORLD</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

</html>
<body>
	<%@ include file="header.jsp"%>
	<div class="container">
		<h1>PLEASE REGISTER!!</h1>
		<div class="col-lg-12">
			<div class="row">

				<springForm:form action="./register/login" modelAttribute="user"
					method="POST" class="form-horizontal">



					<div class="form-group">
						<springForm:label class="control-label col-sm-3" path="userName">NAME:</springForm:label>
						<div class="col-sm-8">
							<springForm:input class="form-control" placeholder="Enter name"
								path="userName" />
						</div>
					</div>
					<div class="form-group">
						<springForm:label class="control-label col-sm-3" path="emailid">EMAILID:</springForm:label>
						<div class="col-sm-8">
							<springForm:input class="form-control" placeholder="Enter Mailid"
								path="emailid" />
						</div>
					</div>


					<div class="form-group">
						<springForm:label path="Address" class="control-label col-sm-3">ADDRESS:</springForm:label>
						<div class="col-sm-8">
							<springForm:textarea class="form-control" rows="5" cols="30"
								path="address" placeholder="Enter Address" id="address" />

						</div>
					</div>

					<div class="form-group">
						<springForm:label class="control-label col-sm-3" path="password">PASSWORD:</springForm:label>
						<div class="col-sm-8">
							<springForm:input path="Password" class="form-control"
								type="password" id="password" placeholder="Password"
								name="password" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-10">
							<div class="text-center">
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">Cancel</button>

								<div class="col-sm-10">
									<button class="btn btn-primary" type="submit" id="register">Register</button>
								</div>
							</div>
						</div>
					</div>

				</springForm:form>



			</div>
		</div>



	</div>
</body>
</html>