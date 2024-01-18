<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Dojo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
	<main class="text-center mt-5">
		<h1 class="mb-5">Add a New Dojo</h1>
		<form:form class="form w-50 m-auto" action="/dojos" method="POST" modelAttribute="dojo">
			<div class="form-group row">
				<div class="col-4"></div>
				<form:input class="form-control col-4" path="name" placeholder="Dojo Name"/>
				<form:errors class="text-danger col-4" path="name"/>
			</div>
			<input type="submit" class="btn btn-success" value="Add Dojo"> 
		</form:form>
	</main>
</body>
</html>