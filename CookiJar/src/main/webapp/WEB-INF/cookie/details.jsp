<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Details</title>
<style>
body {
	background-image: url('images/cooki-jar-bg.png');
	background-size: cover;
	background-position: center;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" type="image/png" href="images/cooki-jar.ico" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 mx-auto">
				<div class="card mt-5">
					<div class="card-body text-center bg-light">
						<button class="btn btn-warning" type="submit"
							onclick="window.location.href='home.do'">Return To Home</button>
						<br>
						<hr>
						<c:choose>
							<c:when test="${empty c}">
								<h1>Cookie Not Found</h1>
							</c:when>
							<c:otherwise>
								<img src="images/cooki-jar-logo.png" alt="Cooki Jar" />
								<h1>Cookie - ${c.id}</h1>
								<div>
									<p>
										<strong>Type:</strong> ${c.type}
									</p>
									<p>
										<strong>Frosting:</strong> ${c.frosting}
									</p>
									<p>
										<strong>Topping:</strong> ${c.topping}
									</p>
									<p>
										<strong>Calories:</strong> ${c.calories}
									</p>
									<p>
										<strong>Sugar:</strong> ${c.sugar}g
									</p>
									<p>
										<strong>Price:</strong> $${c.price}
									</p>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>