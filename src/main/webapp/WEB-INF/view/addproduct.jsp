
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Spring MVC Form Handling</title>
 </head>
 <body>
  <h2>Add Product</h2>
  <form:form method="POST" action="/sdnext/save.html">
      <table>
       <tr>
           <td><form:label path="id">Product ID:</form:label></td>
           <td><form:input path="id" value="${product.id}" readonly="true"/></td>
       </tr>
       <tr>
           <td><form:label path="name">Product Name:</form:label></td>
           <td><form:input path="name" value="${product.name}"/></td>
       </tr>
       <tr>
           <td><form:label path="stock">Stock:</form:label></td>
           <td><form:input path="stock" value="${product.stock}"/></td>
       </tr>
       <tr>
           <td><form:label path="price">Price:</form:label></td>
           <td><form:input path="price" value="${product.price}"/></td>
       </tr>
       
              <tr>
         <td colspan="2"><input type="submit" value="Submit"/></td>
        </tr>
   </table> 
  </form:form>
  
  <c:if test="${!empty employees}">
  <h2>List Employees</h2>
 <table align="left" border="1">
  <tr>
   <th>Employee ID</th>
   <th>Employee Name</th>
   <th>Employee Age</th>
   <th>Employee Salary</th>
   <th>Employee Address</th>
           <th>Actions on Row</th>
  </tr>

  <c:forEach items="${employees}" var="employee">
   <tr>
    <td><c:out value="${product.id}"/></td>
    <td><c:out value="${product.name}"/></td>
    <td><c:out value="${product.age}"/></td>
    <td><c:out value="${product.salary}"/></td>
    <td><c:out value="${product.address}"/></td>
    <td align="center"><a href="edit.html?id=${employee.id}">Edit</a> | <a href="delete.html?id=${employee.id}">Delete</a></td>
   </tr>
  </c:forEach>
 </table>
</c:if>
 </body>
</html>
</body>
</html>