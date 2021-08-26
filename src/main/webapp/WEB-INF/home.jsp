<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Persons</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
<div class="container">
<br>
<h1>List of Persons - Population : ${count } </h1>

<div class="float-right">
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		     <a class="nav-link" href="/registerPerson">Register a Person</a>
		  </li>
		    <li class="nav-item">
		    <a class="nav-link active" href="/">Home</a>
		  </li>
		</ul>
<br>
</div>

	<table class="table table-striped">
		<thead class="thead-dark">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Edit Information</th>
				<th>Delete</th>
				
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${persons}" var="person">
			<tr>	
				<td><c:out value="${person.firstName}"/></td>
				<td><c:out value="${person.lastName}"/></td>
				<td><a href="/${person.id}">View</a> </td>
				<td><a href="/delete/${person.id }">Delete</a></td>

			</tr>
		</c:forEach>
		</tbody>
	</table>

</div>
</body>
</html>