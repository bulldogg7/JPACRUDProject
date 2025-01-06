<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Cookie</title>
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
}
</style>
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
						<hr>
						<img src="images/cooki-jar-logo.png" alt="Cooki Jar" />
						<h1>Add Cookie</h1>
						<hr>
						<form action="createCookie.do" method="POST">
							<h3>Name</h3>
							<label for="name">Enter the Cookie Name:</label><br> <input
								type="text" id="name" name="name" placeholder="Molten Lava"
								required style="text-align: center"><br> <br>
							<h3>Base</h3>
							<label for="base">Enter the Base Cookie:</label><br> <input
								type="text" id="base" name="base" placeholder="Sugar" size="20"
								required style="text-align: center"><br> <br>
							<h3>Contents</h3>
							<label for="contents">Enter the Cookie Contents:</label><br>
							<input type="text" id="contents" name="contents"
								placeholder="Chocolate Chunks" size="20" required
								style="text-align: center"><br> <br>
							<h3>Frosting</h3>
							<label for="frosting">Enter the Cookie Frosting:</label><br>
							<input type="text" id="frosting" name="frosting"
								placeholder="Cream Cheese" size="20" style="text-align: center"><br>
							<br>
							<h3>Topping</h3>
							<label for="topping">Enter the Cookie Topping:</label><br> <input
								type="text" id="topping" name="topping"
								placeholder="Chocolate Sprinkles" size="20"
								style="text-align: center"><br> <br>
							<h3>Calories (1/4 of a Cookie)</h3>
							<label for="calories">Select the Cookie Calories:</label><br>
							<input type="number" id="calories" name="calories" min="0"
								max="1200" value="120" step="10" required
								style="text-align: center"><br> <br>
							<h3>Sugar (In Grams for 1/4 of a Cookie)</h3>
							<label for="sugar">Select the Cookie Sugar (In Grams for
								1/4 of a Cookie):</label><br> <input type="number" id="sugar"
								name="sugar" min="0" max="20" value="12" step=".5" required
								style="text-align: center"><br> <br>
							<h3>Price</h3>
							<label for="price">How Much is the Cookie?</label><br> <input
								type="number" id="price" name="price" value="4.99" min="2.99"
								max="6.99" step=".10" required style="text-align: center"><br>
							<br>
							<button type="submit" class="btn btn-success">
								Bake This Cookie! <i class="bi bi-cookie"></i>
							</button>
						</form>
						<br>
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