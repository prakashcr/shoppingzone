
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<
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
<body>
	<%@ include file="header.jsp"%>
	
	<div class="jumbotron">
	<marquee>WELCOME TO THE CRICKET WORLD</marquee>
	</div>

	<div id="myCarousel" class="carousel slide" data-slide="carousel">

		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>


		<div class="carousel-inner">
			<div class="item active">
				<img src="resources\image\a.jpg" alt="Chicago"
					class="img-responsive" width=100%>
			</div>

			<div class="item">
				<img src="resources\image\b.jpg" alt="New York"
					class="img-responsive" width=100%>
			</div>
			<div class="item">
				<img src="resources\image\c.jpg" alt="New York"
					class="img-responsive" width=100%>
			</div>

		</div>

		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>