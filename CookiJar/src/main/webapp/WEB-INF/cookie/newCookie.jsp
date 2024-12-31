<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Cookie</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<h1>Add Cookie</h1>
	<form action="newCookie.do" method="POST">
		<h3>Type</h3>
		<label for="title">Enter the Cookie Type:</label> <input type="text"
			id="title" name="title" required><br> <br>
		<h3>Frosting</h3>
		<label for="description">Enter the Cookie Frosting:</label> <input
			type="text" id="description" name="description" size="90"><br>
		<br>
		<h3>Topping</h3>
		<label for="description">Enter the Cookie Topping:</label> <input
			type="text" id="description" name="description" size="90"><br>
		<br>
		<h3>Calories</h3>
		<label for="length">Select the Cookie Calories:</label> <input
			type="number" id="length" name="length" min="200" max="1200"
			value="90" step="10"><br> <br>
		<h3>Sugar (In Grams)</h3>
		<label for="length">Select the Cookie Sugar (In Grams):</label> <input
			type="number" id="length" name="length" min="200" max="1200"
			value="90" step="10"><br> <br>
		<h3>Price</h3>
		<label for="rentalRate">How Much is the Cookie?</label> <input
			type="number" id="rentalRate" name="rentalRate" value="8.99"
			min="3.99" max="19.99" step="1.0"><br> <br> <input
			type="submit" class="submit-button" value="Add Cookie">
	</form>
	<br>
	<button type="submit" class="submit-button"
		onclick="window.location.href='/MVCFilmSite/'">Return To Home</button>
</body>
</html>