<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Cookie</title>
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
</style>
</head>
<body>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 mx-auto">
				<div class="card mt-4">
					<div class="card-body text-center bg-light">
						<img src="images/cooki-jar-logo.png" alt="Cooki Jar" />
						<h1>Cookie Successfully Deleted!</h1>
						<button class="btn btn-primary" type="submit"
							onclick="window.location.href='home.do'">
							Return To Home <i class="bi bi-cookie"></i>
						</button>
						<br>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-7 mx-auto">
					<div class="card mt-2">
						<div class="card-body">
							<footer>
								<br>
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