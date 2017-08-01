<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>POWER SPORTS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.navbar {
	font-style: italic;
	background-color: rgba(red, green, blue, alpha);
	margin-bottom: 00px;
	border-radius: 0px;
	background-image:
		url("https://www.transparenttextures.com/patterns/gravel.png");
}

body {
	background-color: white;
	background-image: url();
}
</style>
</head>
</head>
<body>
	<nav class="navbar navbar-inverse ">
	<div class="container-fluid">
		<div class="navbar-header">

			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#mynavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="container">
			<a class="navbar-brand"> P O W E R S P O R T S</a> <a
				class="navbar-brand" href="#"><img src="" class="img-round"
				height="30px" width="50px">
		</div>
		<div class="nav navbar-nav">
			<ul class="nav navbar-nav">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span>home</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-list"></span>category</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="C:\Users\COMPUTER\Desktop\login.html"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">

		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
		</ol>

		<div class="carousel-inner">
			<div class="item active">
				<img src="resource\image\c.jpg" alt="Chicago" class="img-responsive"
					width=100%>
			</div>

			<div class="item">
				<img src="resource\image\b.jpg" alt="New York"
					class="img-responsive" width=100%>
			</div>
		</div>
	</div>

	<a class="left carousel-control" href="#myCarousel" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left"></span> <span
		class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right"></span> <span
		class="sr-only">Next</span>
	</a>
	</div>
</body>
</html>