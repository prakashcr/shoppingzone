<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="FALSE"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>CRICKET WORLD</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<link rel="stylesheet" href="C:\Users\COMPUTER\Desktop\header.html">
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
	<c:url value="/j_spring_security_check" var="login"></c:url>
	<form action="${login}" method="POST">
		<div class="container">
			<h2 style="text-align: center; color: white;">WELCOME TO LOGIN
				PAGE</h2>
			<c:if test="${error!=null}">
				<div class="alert alert-warning">
					<strong>check your username or password</strong>
				</div>
			</c:if>
			<div class="form-group">
				<label  style="text-align: center; color: white;">User:</label>
				<input type="text" name="j_username" class="form-control"
					placeholder="Enter username">
			</div>
			<div class="form-group">
				<label style="text-align: center; color: white;">Password:</label>
				<input type="password" name="j_password" class="form-control"
					id="pwd" placeholder="Enter password" name="pwd">
			</div>
			<div class="checkbox">
				<label style="text-align: center; color: white;"><input
					type="checkbox" name="remember"> Remember me</label>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</div>
	</form>
</body>


=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="FALSE"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>CRICKET WORLD</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<link rel="stylesheet" href="C:\Users\COMPUTER\Desktop\header.html">
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
	<c:url value="/j_spring_security_check" var="login"></c:url>
	<form action="${login}" method="POST">
		<div class="container">
			<h2 style="text-align: center; color: white;">WELCOME TO LOGIN
				PAGE</h2>
			<c:if test="${error!=null}">
				<div class="alert alert-warning">
					<strong>check your username or password</strong>
				</div>
			</c:if>
			<div class="form-group">
				<label  style="text-align: center; color: white;">User:</label>
				<input type="text" name="j_username" class="form-control"
					placeholder="Enter username">
			</div>
			<div class="form-group">
				<label style="text-align: center; color: white;">Password:</label>
				<input type="password" name="j_password" class="form-control"
					id="pwd" placeholder="Enter password" name="pwd">
			</div>
			<div class="checkbox">
				<label style="text-align: center; color: white;"><input
					type="checkbox" name="remember"> Remember me</label>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</div>
	</form>
</body>


>>>>>>> origin/master
</html>