<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${person.firstName} ${person.lastName } </title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			rel="stylesheet" 
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
			crossorigin="anonymous">
</head>
<body>
<div class="container">
<br>
<h1>${person.firstName} - ${person.lastName } </h1>

<div class="float-right">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		     <a class="nav-link" href="/registerPerson">Register a Person</a>
		  </li>
		    <li class="nav-item">
		    <a class="nav-link" href="/">Home</a>
		  </li>
		</ul>
<br>
</div>
<br>
<br>


<form:form action="/edit/${person.id}" method="POST" modelAttribute="person">
    <div class="form-group">
    	<p>
          <form:label path="firstName">First Name</form:label>
          <form:errors path="firstName"/>
          <form:input type="text" class="form-control" path="firstName"/>
       	</p> 
       	<br>  
        <p>
          <form:label path="lastName">Last Name</form:label>
          <form:errors path="lastName"/>
          <form:input type="text" class="form-control" path="lastName"/>
        </p>         
      </div>
      <button class="btn btn-info">Update</button><span></span>
</form:form>
<br>
<h3>Locations</h3>
	<table class="table table-striped">
		<thead class="thead-dark">
			<tr>
				<th>Street</th>
				<th>City</th>
				<th>State</th>
				<th>Postal Code</th>
				<th>Edit Information</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${addressess}" var="address">
			<tr>	
				<td><c:out value="${address.street}"/></td>
				<td><c:out value="${address.city}"/></td>
				<td><c:out value="${address.state}"/></td>
				<td><c:out value="${address.postalCode}"/></td>
				<td><a href="/updateAddress/${address.id}">Edit</a></td>
				<td> <a href="/deleteAddress/${address.id }">Delete</a></td>

			</tr>
		</c:forEach>
		</tbody>
	</table>
<br>
<h3>Add New Address</h3>


<form:form action="/addAddress" method="POST" modelAttribute="address">
<form:input type="hidden" value="${person.id}" path="person"/>
    <div class="form-group">
    	<p>
          <form:label path="street">Street</form:label>
          <form:errors path="street"/>
          <form:input type="text" class="form-control" path="street"/>
       	</p>  
        <p>
          <form:label path="city">City</form:label>
          <form:errors path="city"/>
          <form:input type="text" class="form-control" path="city"/>
        </p>
        <p>
          <form:label path="state">State</form:label>
          <form:errors path="state"/>
          <form:input type="text" class="form-control" path="state"/>
        </p> 
         <p>
          <form:label path="postalCode">Postal Code</form:label>
          <form:errors path="postalCode"/>
          <form:input type="number" class="form-control" path="postalCode"/>
        </p>          
      </div>
      <button class="btn btn-info">Add</button>
</form:form>
 <br>
 <br>
 <br>
 <br>
</div>
</body>
</html>