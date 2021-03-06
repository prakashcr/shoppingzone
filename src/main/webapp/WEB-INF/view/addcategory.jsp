
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="springForm"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<style>
body {
	background-image:
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<br>
	<br>
	<div class="container">
		<h2 style="text-align: center; color: red;">Add Category</h2>
		<br>
		<springForm:form action="${contextRoot}/savecat" method="POST"
			modelAttribute="category">
			<springForm:hidden path="cid" />
			<div class="form-group">
				<springForm:label class="control-label col-sm-4"
					style="text-align:right" path="catname">ENTER CATEGORY</springForm:label>

				<div class="control-label col-sm-4 col-sm-4">
					<springForm:input class="form-control" path="catname"
						placeholder="Enter category name" />
				</div>
			</div>
			<br>
			<br>
			<br>
			<springForm:input type="hidden" path="cid" class="form-control" />
			<div class="form-group">
				<div class="col-sm-12">
					<div class="text-center">
						<input type="submit" class="btn btn-info btn-lg" value="submit" />
					</div>
				</div>
			</div>
		</springForm:form>
	</div>
</body>
</html>