Skip to content Features Business Explore Marketplace Pricing This
repository Search Sign in or Sign up Watch 0 Star 0 Fork 0
bastinvivek/sportszone Code Issues 0 Pull requests 0 Projects 0 Insights
Branch: master Find file Copy
pathsportszone/sportszone/src/main/webapp/WEB-INF/view/contactus.jsp
67e28bb on Jun 10 @bastinvivek bastinvivek sportszone1 1 contributor
RawBlameHistory 48 lines (48 sloc) 1.89 KB
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@include file="header.jsp"%>
</head>
<div class="container-fluid">
	<div class="jumbotron jumbotron-sm"
		style="background-color: #339966; margin-top: 2%; color: white;">
		<div class="row">
			<div class="col-sm-12 col-lg-12">
				<h1 class="h2" style="margin-top: -2%">Contact Us</h1>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-6">
			<div class="well">
				<h3 style="line-height: 20%;">
					<i class="fa fa-home fa-1x" style="line-height: 6%; color: #339966"></i>
					Address:
				</h3>
				<p style="margin-top: 6%; line-height: 35%">CRICKET
					WORLD,ANNANAGAR WEST,CHENNAI-40</p>
				<br /> <br />
				<h3 style="line-height: 20%;">
					<i class="fa fa-envelope fa-1x"
						style="line-height: 6%; color: #339966"></i> E-Mail:
				</h3>
				<p style="margin-top: 6%; line-height: 35%">CWCR7@gmail.com</p>
				<br /> <br />
				<h3 style="line-height: 20%;">
					<i class="fa fa-user fa-1x" style="line-height: 6%; color: #339966"></i>
					Official number:
				</h3>
				<p style="margin-top: 6%; line-height: 35%">+91 9500001078</p>
				<br /> <br />
				<h3 style="line-height: 20%;">
					<i class="fa fa-yelp fa-1x" style="line-height: 6%; color: #339966"></i>Website:
				</h3>
				<p style="margin-top: 6%; line-height: 35%">
					<a href="#">www.CRICKETWORLD.com</a>
				</p>
			</div>
		</div>
	</div>
</div>
</body>
<%@include file="footer.jsp"%>
</html>