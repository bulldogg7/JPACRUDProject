<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Cookie</title>
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
	border-style: solid;
	border-color: #99ccff;
	border-width: 20px;
	border-radius: 10px;
}

footer {
	text-align: center;
}

.top {
	margin-top: calc(100vh + var(--offset));
	text-decoration: none;
	padding: 10px;
	font-family: sans-serif;
	color: #fff;
	background: #ff9933;
	border-radius: 10px;
}

.unable {
	text-align: center;
	padding: 5px;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	background: none;
	border-style: solid;
	border-color: red;
	border-width: 2px;
	border-radius: 5px;
	font-family: sans-serif;
	font-size: 1rem;
	width: 100%;
}
</style>
</head>
<body>

	<div class="container sticky-top">
		<div class="row">
			<div class="col-md-10 mx-auto">
				<div class="card mt-4">
					<div class="card-body">
						<h1 style="text-align: center">Selected Cookie - ${c.id}</h1>
						<table class="table table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Base</th>
									<th>Contents</th>
									<th>Frosting</th>
									<th>Topping</th>
									<th>Calories*</th>
									<th>Sugar*</th>
									<th>Price</th>
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${c.id}</td>
									<td>${c.name}</td>
									<td>${c.base}</td>
									<td>${c.contents}</td>
									<td>${c.frosting}</td>
									<td>${c.topping}</td>
									<td>${c.calories}</td>
									<td>${c.sugar}g</td>
									<td>$${c.price}</td>
									<td><c:if test="${c.id > 25}">
											<form action="deleteCookie.do" method="POST"
												onsubmit="return window.confirm('Confirm Delete?');">
												<div class="form-group">
													<input type="hidden" class="form-control" id="id"
														name="cookieId" value="<c:out value='${c.id}' />">
												</div>
												<button type="submit" class="btn btn-danger">Delete</button>
											</form>
										</c:if> <c:if test="${c.id <= 25}">
											<button class="unable">
												<i class="bi bi-exclamation-octagon"></i>
											</button>
										</c:if></td>
								</tr>
							</tbody>
						</table>
						<br>
						<p style="text-align: right">*For 1/4 Cookie</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-6 mx-auto">
				<div class="card mt-4">
					<div class="card-body text-center bg-light">
						<button class="btn btn-primary" type="submit"
							onclick="window.location.href='home.do'">
							Return To Home <i class="bi bi-cookie"></i>
						</button>
						<hr>
						<img src="images/cooki-jar-logo.png" alt="Cooki Jar" />
						<h1>Edit Cookie</h1>
						<hr>
						<form action="updateCookie.do?id=${c.id}" method="POST"
							onsubmit="return window.confirm('Confirm Edits?');">
							<h3>Cookie Name</h3>
							<input type="text" name="name" value="${c.name}"
								style="text-align: center" /> <br> <br>
							<h3>Base Cookie</h3>
							<input type="text" id="base" name="base" value="${c.base}"
								size="20" style="text-align: center"> <br> <br>
							<h3>Cookie Contents</h3>
							<input type="text" id="contents" name="contents"
								value="${c.contents}" size="20" style="text-align: center">
							<br> <br>
							<h3>Cookie Frosting</h3>
							<input type="text" id="frosting" name="frosting"
								value="${c.frosting}" size="20" style="text-align: center">
							<br> <br>

							<h3>Cookie Topping</h3>
							<input type="text" id="topping" name="topping"
								value="${c.topping}" size="20" style="text-align: center">
							<br> <br>

							<h3>Cookie Calories (1/4 of a Cookie)</h3>
							<input type="number" id="calories" name="calories" min="0"
								max="1200" value="${c.calories}" step="10"
								style="text-align: center"> <br> <br>

							<h3>Cookie Sugar (In Grams for 1/4 of a Cookie)</h3>
							<input type="number" id="sugar" name="sugar" min="0" max="20"
								value="${c.sugar}" step=".5" style="text-align: center">
							<br> <br>

							<h3>Cookie Price</h3>
							<input type="number" id="price" name="price" value="${c.price}"
								min="2.99" max="6.99" step=".10" style="text-align: center">
							<br> <br>
							<button type="submit" class="btn btn-success">
								Submit Changes <i class="bi bi-cookie"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-7 mx-auto">
				<div class="card mt-2">
					<div class="card-body">
						<footer>
							<br> <a href="#" class="top">Go To Top <i
								class="bi bi-cookie"></i></a> <br> <br>
							<p>
								<a href="http://www.SheehanThomson.com" target="blank">www.SheehanThomson.com</a>

								<script type="text/javascript">
									var date = new Date(), year = date
											.getFullYear(), text = "All Rights Reserved &#xA9; "
											+ year + " - CookiJar", html = '<div class="text-align-center">'
											+ text + '</div>';

									document.write(html);
								</script>
							</p>
						</footer>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>