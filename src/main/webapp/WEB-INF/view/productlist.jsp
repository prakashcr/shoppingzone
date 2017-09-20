<<<<<<< HEAD

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript" charset="utf8"
	src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<style>
th {
	font-family: times new roman;
	color: red;
}

td {
	font-family: times new roman;
	color: black;
}
</style>
</head>
<body>
<%@ include file="header.jsp"%>
<br>
<br>
	<h2 style="text-align: center; color: black;">PRODUCTLIST</h2>
	<div class="container">
		<div class="img-thumbnail">

			<table
				class="table table-responsive table-stripped table-hover table-bodered"
				style="text-align: center">
				<thead>
					<tr>

						<th>PRODUCT NAME</th>
						<th>CATEGORY</th>
						<th>BRANDNAME</th>
						<th>STOCK</th>
						<th>PRICE</th>
						<th>IMAGE</th>

						<th>ACTIONS ON ROW</th>
					</tr>
				</thead>

				<c:forEach items="${products}" var="p">
					<tr>

						<td><c:out value="${p.pname}" /></td>
						<td><c:out value="${p.category.catname}" /></td>
						<td><c:out value="${p.brandname}" /></td>
						<td><c:out value="${p.stock}" /></td>
						<td><c:out value="${p.price}" /></td>
						<c:url value="/resources/image/${p.pid}.jpg " var="url" />
						<td><img src="${url}" height="100" width="80"></td>
						<td align="center"><a
							href=<c:url value="/all/product/viewProduct/${p.pid}"/>
							style="text-align: center; color: black;"><span
								class="glyphicon glyphicon-info-sign"
								style="text-align: center; color: blue;"></span> VIEW</a> <c:if
								test="${pageContext.request.userPrincipal.name !=null }">
								<security:authorize access="hasRole('ROLE_ADMIN')">
									<a
										href=<c:url value="/admin/all/product/editProduct/${p.pid}"/>
										style="text-align: center; color: black;"><span
										class="glyphicon glyphicon-edit"
										style="text-align: center; color: blue;"></span> UPDATE</a>
								</security:authorize>
							</c:if> <c:if test="${pageContext.request.userPrincipal.name !=null }">
								<security:authorize access="hasRole('ROLE_ADMIN')">
									<a href=<c:url value="/admin/deleteProduct/${p.pid}"/>
										style="text-align: center; color: black;"><span
										class="glyphicon glyphicon-trash"
										style="text-align: center; color: blue;"></span> DELETE</a>
								</security:authorize>
							</c:if></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="col-lg-08">
			<c:url value="/body" var="url2"></c:url>
			<a href="${url2}" style="text-align: center; color: black;"><span
				class="glyphicon glyphicon-arrow-left"></span> BACK TO HOME</a><br>
		</div>

	</div>
</body>
</html>
=======

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript" charset="utf8"
	src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<style>
th {
	font-family: times new roman;
	color: red;
}

td {
	font-family: times new roman;
	color: black;
}
</style>
</head>
<body>
<%@ include file="header.jsp"%>
<br>
<br>
	<h2 style="text-align: center; color: black;">PRODUCTLIST</h2>
	<div class="container">
		<div class="img-thumbnail">

			<table
				class="table table-responsive table-stripped table-hover table-bodered"
				style="text-align: center">
				<thead>
					<tr>

						<th>PRODUCT NAME</th>
						<th>CATEGORY</th>
						<th>BRANDNAME</th>
						<th>STOCK</th>
						<th>PRICE</th>
						<th>IMAGE</th>

						<th>ACTIONS ON ROW</th>
					</tr>
				</thead>

				<c:forEach items="${products}" var="p">
					<tr>

						<td><c:out value="${p.pname}" /></td>
						<td><c:out value="${p.category.catname}" /></td>
						<td><c:out value="${p.brandname}" /></td>
						<td><c:out value="${p.stock}" /></td>
						<td><c:out value="${p.price}" /></td>
						<c:url value="/resources/image/${p.pid}.jpg " var="url" />
						<td><img src="${url}" height="100" width="80"></td>
						<td align="center"><a
							href=<c:url value="/all/product/viewProduct/${p.pid}"/>
							style="text-align: center; color: black;"><span
								class="glyphicon glyphicon-info-sign"
								style="text-align: center; color: blue;"></span> VIEW</a> <c:if
								test="${pageContext.request.userPrincipal.name !=null }">
								<security:authorize access="hasRole('ROLE_ADMIN')">
									<a
										href=<c:url value="/admin/all/product/editProduct/${p.pid}"/>
										style="text-align: center; color: black;"><span
										class="glyphicon glyphicon-edit"
										style="text-align: center; color: blue;"></span> UPDATE</a>
								</security:authorize>
							</c:if> <c:if test="${pageContext.request.userPrincipal.name !=null }">
								<security:authorize access="hasRole('ROLE_ADMIN')">
									<a href=<c:url value="/admin/deleteProduct/${p.pid}"/>
										style="text-align: center; color: black;"><span
										class="glyphicon glyphicon-trash"
										style="text-align: center; color: blue;"></span> DELETE</a>
								</security:authorize>
							</c:if></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="col-lg-08">
			<c:url value="/body" var="url2"></c:url>
			<a href="${url2}" style="text-align: center; color: black;"><span
				class="glyphicon glyphicon-arrow-left"></span> BACK TO HOME</a><br>
		</div>

	</div>
</body>
</html>
>>>>>>> origin/master
