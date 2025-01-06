<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Details</title>
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

.card-body {
	border-style: solid;
	border-color: #99ccff;
	border-width: 20px;
	border-radius: 10px;
}

.cookie {
	height: 250px;
	width: 250px;
	position: relative;
}

.col-md-7 mx-auto {
	background: transparent;
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
	border-color: #DC3545;
	border-width: 2px;
	border-radius: 5px;
	font-family: sans-serif;
	font-size: 1rem;
	width: 20%;
	font-size: 1rem;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" type="image/png" href="images/cooki-jar.ico" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 mx-auto">
				<div class="card mt-4">
					<div class="card-body text-center bg-light">
						<button class="btn btn-primary" type="submit"
							onclick="window.location.href='home.do'">
							Return To Home <i class="bi bi-cookie"></i>
						</button>
						<button class="btn btn-success" type="submit"
							onclick="window.location.href='addCookie.do'">
							Add New Cookie <i class="bi bi-cookie"></i>
						</button>
						<br>
						<hr>
						<c:choose>
							<c:when test="${empty c}">
								<h1>Cookie Not Found</h1>
							</c:when>
							<c:otherwise>
								<img src="images/cooki-jar-logo.png" alt="Cooki Jar" />
								<h1>Cookie - ${c.id}</h1>
								<button class="btn btn-warning" type="submit"
									onclick="window.location.href='editCookie.do?cookieId=${c.id}'">
									Edit Cookie <i class="bi bi-cookie"></i>
								</button>
								<br>
								<br>
								<c:if test="${c.id > 25}">
									<form action="deleteCookie.do" method="POST"
										onsubmit="return window.confirm('Confirm Delete?');">
										<div class="form-group">
											<input type="hidden" class="form-control" id="id" name="id"
												value="<c:out value='${c.id}' />">
										</div>
										<button type="submit" class="btn btn-danger">
											Delete <i class="bi bi-cookie"></i>
										</button>
									</form>
								</c:if>
								<c:if test="${c.id <= 25}">
									<button class="unable">
										<i class="bi bi-exclamation-octagon"></i>
									</button>
								</c:if>
								<br>
								<br>
								<div>
									<p>
										<strong>Name:</strong> ${c.name}
									</p>
									<p>
										<strong>Base:</strong> ${c.base}
									</p>
									<p>
										<strong>Contents:</strong> ${c.contents}
									</p>
									<p>
										<strong>Frosting:</strong> ${c.frosting}
									</p>
									<p>
										<strong>Topping:</strong> ${c.topping}
									</p>
									<p>
										<strong>Calories:</strong> ${c.calories}/qtr
									</p>
									<p>
										<strong>Sugar:</strong> ${c.sugar}g/qtr
									</p>
									<p>
										<strong>Price:</strong> $${c.price}
									</p>
									<p>
										<img class="cookie" src="images/classic-chocolate-chip.png"
											alt="Classic Chocolate Chip" />
									</p>
								</div>
					</div>
				</div>
			</div>
			</div>
			</c:otherwise>
			</c:choose>
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
		</div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
			crossorigin="anonymous"></script>
</body>
</html>