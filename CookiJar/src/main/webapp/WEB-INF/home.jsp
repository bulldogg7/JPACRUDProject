<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CookiJar</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<div
		class="sticky-top container bg-light border border-dark rounded-4 ">
		<br>
		<h1>Welcome to Cooki Jar!</h1>
		<form action="getCookie.do" method="GET">
			Cookie ID: <input type="text" name="cookieId" /> <input
				class="btn btn-success" type="submit" value="Show Cookie" />
		</form>
		<br> <br>
	</div>
	<div class="container">
		<table class="table table-striped table-hover">
			<thead class="bg-light sticky-top top-20">
				<tr>
					<th>ID</th>
					<th>Type</th>
					<th>Frosting</th>
					<th>Topping</th>
					<th>Calories</th>
					<th>Sugar (In Grams)</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<td>${cookie.id}</td>
				<td><a
					href="<c:url value='getCookie.do'><c:param name='cookieId' value='${cookie.id}'/></c:url>">
						${cookie.type}</a></td>
				<td>${cookie.frosting}</td>
				<td>${cookie.topping}</td>
				<td>${cookie.calories}</td>
				<td>${cookie.sugar}</td>
				<td>${cookie.price}</td>
			</tbody>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>