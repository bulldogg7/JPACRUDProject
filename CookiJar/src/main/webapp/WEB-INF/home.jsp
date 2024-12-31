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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" type="image/png" href="images/cooki-jar.ico" />
<style>
html body {
	background-image: url('images/cooki-jar-bg.png');
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
}

img {
	height: 80px;
	width: 80px;
	position: relative;
}

.card {
	background-color: transparent;
	border: none;
}

.card-body {
	border-color: #99ccff;
	border-width: 4px;
}

.table {
	margin: auto;
	width: 100%;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 mx-auto">
				<div class="card mt-4">
					<div class="card-body text-center bg-light border rounded-5">
						<h1>
							Welcome to<br> <img src="images/cooki-jar-logo.png"
								alt="Cooki Jar" />
						</h1>
						<form action="getCookie.do" method="GET">
							Search Cookies By ID: <br> <input type="text"
								name="cookieId" required="required" style="text-align: center"
								placeholder="5" /> <br> <br>
							<button type="submit" class="btn btn-warning">
								Show Cookie <i class="bi bi-cookie"></i>
							</button>
						</form>
						<hr>
						<form action="keywordCookies" method="POST">
							<label for="name" class="form-label">Search Cookies By
								Keyword: </label> <br> <input type="text" name="name"
								required="required" maxlength="255" style="text-align: center"
								placeholder="Chocolate" /> <br> <br>
							<button type="submit" class="btn btn-danger">
								Search Cookies <i class="bi bi-cookie"></i>
							</button>
						</form>
						<hr>
						<form action="newCookie.do" method="GET">
							<button type="submit" class="btn btn-primary">
								Add New Cookie <i class="bi bi-cookie"></i>
							</button>
						</form>
						<hr>
						<form action="readCookies.do" method="GET">
							<button type="submit" class="btn btn-success">
								See All Cookies <i class="bi bi-cookie"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-7 mx-auto">
				<div class="card mt-4">
					<div class="card-body">
						<table class="table table-hover border rounded-5 overflow-hidden">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Contents</th>
									<th>Frosting</th>
									<th>Topping</th>
									<th>Calories</th>
									<th>Sugar</th>
									<th>Price</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="c" items="${cookieList}">
									<c:if test="${empty name}">
										<tr>
									</c:if>
									<c:if test="${! empty name}">
										<c:if test="${c.name == name}">
											<tr class="found">
										</c:if>
										<c:if test="${c.name != name}">
											<tr>
										</c:if>
									</c:if>
									<tr>
										<td>${c.id}</td>
										<td><a
											href="<c:url value='getCookie.do'><c:param name='cookieId' value='${c.id}'/></c:url>">
												${c.name}</a></td>
										<td>${c.contents}</td>
										<td>${c.frosting}</td>
										<td>${c.topping}</td>
										<td>${c.calories}</td>
										<td>${c.sugar}g</td>
										<td>$${c.price}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
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