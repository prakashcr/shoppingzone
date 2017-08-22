
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="FALSE"%>
<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
</head>
<body>

	<h2>List product</h2>
	<table align="left" border="1" style="border-collapse: collapse">
		<tr>
			<th>PRODUCT ID</th>
			<th>PRODUCT NAME</th>
			<th>BRANDNAME</th>
			<th>STOCK</th>
			<th>PRICE</th>
			<th>IMAGE</th>
</tr>
	</table>
	<script type="text/javascript">
	$('#myTable').DataTable(
			{
				ajax:{
					url: 'http://localhost:8081/shoppingzone/producttlist',. 
					dataSrc=''
				},
				columns:[
				         {
				        	 data : 'name',
				        	 mRender:function
				         }
				         ]
				
			})
	
	
	
	
	</script>
</body>
</html>
