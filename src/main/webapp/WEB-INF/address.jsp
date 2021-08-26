<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Address </title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			rel="stylesheet" 
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
			crossorigin="anonymous">
</head>
<body>
<div class="container">
<br>
<h1>Address</h1>

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
<form:form action="/updateAddress/${address.id}" method="POST" modelAttribute="address">
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
      <button class="btn btn-info">Update</button>
</form:form>

</div>
</body>
</html>