
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<c:set var="contextroot" value="${pagecontext.request.contextPath}"></c:set>
<style>
.navbar {
	font-style: inherit;
	background-color: black;
	margin-bottom: 00px;
	border-radius: 00px;
	background-image: url;
}

</style>
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#mynavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"><img src="resources\image\logo1.jpg\"></a>
			<a class="navbar-brand" style="text-align: center; color: white;">CRICKET
				WORLD</a>
		</div>
		<div class="collapse navbar-collapse" id="mynavbar">
			<ul class="nav navbar-nav">
				<li><a href="${contextroot/body}" style="text-align: center; color: white;">
						<span class="glyphicon glyphicon-home"
						style="text-align: center; color: red;"></span> Home
				</a></li>
				<li><c:url value="/admin/addcategory" var="cat"></c:url> <c:if
						test="${pageContext.request.userPrincipal.name!=null }">
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<a href="${cat}" style="text-align: center; color: white;"><span
								class="glyphicon glyphicon-list"
								style="text-align: center; color: red;"></span> Add Category</a>
						</security:authorize>
					</c:if>
				<li>
				<li><c:url value="/admin/addproduct" var="pro"></c:url> <c:if
						test="${pageContext.request.userPrincipal.name!=null }">
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<a href="${pro}" style="text-align: center; color: white;"><span
								class="glyphicon glyphicon-list"
								style="text-align: center; color: red;"></span> Add product</a>
						</security:authorize>
					</c:if></li>

				<li><a href="productlist"
					style="text-align: center; color: white;"><span
						class="glyphicon glyphicon-gift"
						style="text-align: center; color: red;"></span> ProductList</a></li>

			</ul>

			<c:if test="${pageContext.request.userPrincipal.name==null }">
				<ul class="nav navbar-nav navbar-right">

					<li><a href="register"
						style="text-align: center; color: white;"><span
							class="glyphicon glyphicon-user"
							style="text-align: center; color: red;"></span> Register</a></li>
					<li><a href="login?Login=true"
						style="text-align: center; color: white;"><span
							class="glyphicon glyphicon-log-in"
							style="text-align: center; color: red;"></span> Login</a></li>
				</ul>
			</c:if>





			<c:url value="/logout" var="logout" />
			<c:if test="${pageContext.request.userPrincipal.name !=null }">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="" style="text-align: right; color: red;">WELCOME
							${pageContext.request.userPrincipal.name }!!!</a></li>
					<security:authorize access="hasRole('ROLE_USER')">

						<li><a href="cart" style="text-align: center; color: white;"><span
								class="glyphicon glyphicon-shopping-cart"
								style="text-align: center; color: red;"></span> Cart</a></li>
					</security:authorize>

					<li><a href="${logout}"
						style="text-align: center; color: white;"><span
							class="glyphicon glyphicon-log-out"
							style="text-align: center; color: red;"></span>Logout</a></li>


				</ul>
			</c:if>



		</div>

	</div>
	</nav>
</body>

</html>