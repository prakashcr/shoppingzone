
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page  isELIgnored="FALSE" %>
<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <c:set var="contextRoot" value="${pagecontext.request.contextRoot}"> </c:set>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Spring MVC Form Handling</title>
 </head>
 <body>
 
  <h2>List product</h2>
 <table align="left" border="1">
  <tr>
   <th> product ID</th>
   <th> product Name</th>
   <th> stock</th>
   <th> price</th>
 
           <th>Actions on Row</th>
  </tr>

  <c:forEach items="${products}" var="prod">
   <tr>
    <td><c:out value="${prod.pid}"/></td>
    <td><c:out value="${prod.pname}"/></td>
    <td><c:out value="${prod.stock}"/></td>
    <td><c:out value="${prod.price}"/></td>
   <td align="center"><a href= <c:url value="/editProduct/${prod.pid}"/>>Edit</a>|<a href="${contextRoot}/viewProduct/${pro.pid}">View</a> | <a href=<c:url value="/deleteProduct/${prod.pid}"/>>Delete</a></td>  
   </tr>
  </c:forEach>
   </table>
 </body>
</html>
