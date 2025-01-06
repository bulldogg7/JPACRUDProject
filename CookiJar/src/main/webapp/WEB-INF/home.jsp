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
	border-style: solid;
	border-color: #99ccff;
	border-width: 20px;
	border-radius: 10px;
}

.table {
	margin: auto;
	width: 100%;
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
	width: 100%;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 mx-auto">
				<div class="card mt-4">
					<div class="card-body text-center bg-light">
						<h1>
							Welcome to<br> <img src="images/cooki-jar-logo.png"
								alt="Cooki Jar" />
						</h1>
						<form action="readCookie.do" method="GET">
							Search Cookies By ID: <br> <input type="text"
								name="cookieId" required="required" style="text-align: center"
								placeholder="5" /> <br> <br>
							<button type="submit" class="btn btn-primary">
								Show Cookie <i class="bi bi-cookie"></i>
							</button>
						</form>
						<hr>
						<form action="readKeywordCookies.do" method="POST">
							<label for="name" class="form-label">Search Cookies By
								Keyword: </label> <br> <input type="text" name="name"
								required="required" maxlength="255" style="text-align: center"
								placeholder="Chocolate" /> <br> <br>
							<button type="submit" class="btn btn-primary">
								Search Cookies <i class="bi bi-cookie"></i>
							</button>
						</form>
						<hr>
						<form action="addCookie.do" method="GET">
							<button type="submit" class="btn btn-success">
								Add New Cookie <i class="bi bi-cookie"></i>
							</button>
						</form>
						<hr>
						<form action="readAllCookies.do" method="GET">
							<button type="submit" class="btn btn-warning">
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
			<div class="col-md-12 mx-auto">
				<div class="card mt-4">
					<div class="card-body">
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
									<th>Edit</th>
									<th>Delete</th>
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
											href="<c:url value='readCookie.do'><c:param name='cookieId' value='${c.id}'/></c:url>">
												${c.name}</a></td>
										<td>${c.base}</td>
										<td>${c.contents}</td>
										<td>${c.frosting}</td>
										<td>${c.topping}</td>
										<td>${c.calories}</td>
										<td>${c.sugar}g</td>
										<td>$${c.price}</td>
										<td>
											<button class="btn btn-warning" type="submit"
												onclick="window.location.href='editCookie.do?cookieId=${c.id}'">
												Edit</button>
										</td>
										<td><c:if test="${c.id > 25}">
												<form action="deleteCookie.do" method="POST"
													onsubmit="return window.confirm('Confirm Delete?');">
													<div class="form-group">
														<input type="hidden" class="form-control" id="id"
															name="id" value="<c:out value='${c.id}' />">
													</div>
													<button type="submit" class="btn btn-danger">Delete</button>
												</form>
											</c:if> <c:if test="${c.id <= 25}">
												<button class="unable">
													<i class="bi bi-exclamation-octagon"></i>
												</button>
											</c:if></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<br>
						<p style="text-align: right">*For 1/4 Cookie</p>
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
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>