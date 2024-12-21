<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<br> <br>
		<button class="btn btn-success" type="submit"
			onclick="window.location.href='home.do'">Return To Home</button>
		<br> <br>
		<hr>
		<c:choose>
			<c:when test="${empty cookie}">
				<h1>Cookie Not Found</h1>
			</c:when>
			<c:otherwise>
				<h1>Cookie - ${cookie.id}</h1>
				<br>
				<div>
					<p>
						<strong>Type:</strong> ${cookie.type}
					</p>
					<p>
						<strong>Frosting:</strong> ${cookie.frosting}
					</p>
					<p>
						<strong>Topping:</strong> ${cookie.topping}
					</p>
					<p>
						<strong>Calories:</strong> ${cookie.calories}
					</p>
					<p>
						<strong>Sugar (In Grams):</strong> ${cookie.sugar}
					</p>
					<p>
						<strong>Price:</strong> ${cookie.price}
					</p>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>