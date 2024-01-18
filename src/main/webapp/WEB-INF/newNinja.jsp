<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Ninja</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>
<body>
	<main class="text-center mt-5">
		<h1 class="mb-5">Add a New Ninja</h1>
		<form:form class="form w-50 m-auto" action="/ninjas" method="POST" modelAttribute="ninja">
            <div class="form-group row">
				<div class="col-4"></div>
				<form:select class="form-control col-4" path="dojo">
					<c:forEach items="${ dojos }" var="dojo">
					<option value=${ dojo.id }>${ dojo.name }</option>
					</c:forEach>
				</form:select>
			</div>
			<div class="form-group row">
				<div class="col-4"></div>
				<form:input class="form-control col-4" path="firstName" placeholder="First Name"/>
				<form:errors class="text-danger col-4" path="firstName"/>
			</div>
			<div class="form-group row">
				<div class="col-4"></div>
				<form:input class="form-control col-4" path="lastName" placeholder="Last Name"/>
				<form:errors class="text-danger col-4" path="lastName"/>
			</div>
			<div class="form-group row">
				<form:label class="col-4" path="age">Age:</form:label>
				<form:input class="form-control col-4" type="number" path="age" placeholder="age"/>
				<form:errors class="text-danger col-4" path="age"/>
			</div>
			
			<input type="submit" class="btn btn-success" value="Add Ninja"> 
		</form:form>
	</main>
</body>
</html>