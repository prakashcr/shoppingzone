
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
<style>
body {
	background-color: black;
	background-image:
		url("https://www.transparenttextures.com/patterns/xv.png");
}
</style>
<body>

	<div class="container">
		<h1 style="text-align: center; color: white;">PLEASE REGISTER!!</h1>
		<div class="col-lg-12">
			<div class="row">

				<springForm:form action="register" modelAttribute="user"
					method="POST" class="form-horizontal">

					<br>

					<div class="form-group">
						<springForm:label class="control-label col-sm-3" path="userName"
							style="text-align: center;color:white;">NAME:</springForm:label>
						<div class="col-sm-8">
							<springForm:input class="form-control" placeholder="Enter name"
								path="userName" />
							<springForm:errors path="userName">
								<p style="color: red">Enter Valid User Name</p>
							</springForm:errors>

						</div>
					</div>
					<div class="form-group">
						<springForm:label class="control-label col-sm-3" path="emailid"
							style="text-align: center;color:white;">EMAILID:</springForm:label>
						<div class="col-sm-8">
							<springForm:input class="form-control" placeholder="Enter Mailid"
								path="emailid" />
							<springForm:errors path="emailid" cssStyle="color:red">
								<p style="color: red">Enter Valid Email-id</p>
							</springForm:errors>
						</div>
					</div>


					<div class="form-group">
						<springForm:label path="Address" class="control-label col-sm-3"
							style="text-align: center;color:white;">ADDRESS:</springForm:label>
						<div class="col-sm-8">
							<springForm:textarea class="form-control" rows="5" cols="30"
								path="address" placeholder="Enter Address" id="address" />
							<springForm:errors path="address" cssStyle="color:red">
								<p style="color: red">Need to be filled</p>
							</springForm:errors>

						</div>
					</div>

					<div class="form-group">
						<springForm:label class="control-label col-sm-3" path="password"
							style="text-align: center;color:white;">PASSWORD:</springForm:label>
						<div class="col-sm-8">
							<springForm:input path="Password" class="form-control"
								type="password" id="password" placeholder="Password"
								name="password" />
							<springForm:errors path="password" type="password"
								cssStyle="color:red">
								<p style="color: red">Password must have minimum 4
									characters</p>
							</springForm:errors>
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