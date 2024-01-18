<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dojos Index</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>
<body>
	<main class="text-center mt-5">
		<h1 class="mb-5">All Dojos</h1>
		<table class="table table-striped w-50 m-auto">
			<thead>
				<tr>
					<th>Name</th>
					<th># of Ninjas</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ dojos }" var="dojo">
				<tr data-href="/dojos/${ dojo.id }">
					<td>${ dojo.name }</td>
					<td>${ dojo.ninjas.size() }</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>
</body>
</html>