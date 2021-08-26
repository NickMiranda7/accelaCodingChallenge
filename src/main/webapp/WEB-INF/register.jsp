<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
			rel="stylesheet" 
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
			crossorigin="anonymous">
</head>
<body>
<div class="container">
<br>
<h1>Register a Person</h1>
<br>
<div class="float-right">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		     <a class="nav-link active" href="/registerPerson">Register a Person</a>
		  </li>
		    <li class="nav-item">
		    <a class="nav-link" href="/">Home</a>
		  </li>
		</ul>
<br>
</div>


<br>
<br>
<form:form action="/registerPerson" method="POST" modelAttribute="person">
    <div class="form-group">
    	<p>
          <form:label path="firstName">First Name</form:label>
          <form:errors path="firstName"/>
          <form:input type="text" class="form-control" path="firstName"/>
       	</p>   
        <p>
          <form:label path="lastName">Last Name</form:label>
          <form:errors path="lastName"/>
          <form:input type="text" class="form-control" path="lastName"/>
        </p>
          
      </div>
      <button class="btn btn-info">Register Person</button>
</form:form>


</div>
</body>
</html>