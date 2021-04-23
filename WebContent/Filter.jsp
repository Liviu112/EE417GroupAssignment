<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>The Garden Center</title>

<link rel="stylesheet" href="CSS/stylefilter.css">
<jsp:include page="header.jsp" />
</head>
<body>
	<!------ featured products ------>
	<jsp:include page="menu.jsp" />

	<script src="js/effect_loader.js"></script>
	<div id="loader"></div>

	<div class="wrapbox-top">
		<p>Products</p>
	</div>
	<div class="container mt-3">
		<div class="row">
			<div class="col-12">
				<div id="carouselExampleControls" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleControls" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleControls" data-slide-to="1"></li>
						<li data-target="#carouselExampleControls" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100"
								src="Images-Products/flowers/mix/abutilon.jpg" alt="First slide">
							<div class="carousel-caption d-none d-md-block">
								<h4>Abutilon&nbsp;</h4>
								<p>Blessings from afar</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="Images-Products/flowers/mix/desert-rose.jpg"
								alt="Second slide">
							<div class="carousel-caption d-none d-md-block">
								<h4>desert-rose</h4>
								<p>A symbol of strength</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="Images-Products/flowers/mix/canna-lily.jpg"
								alt="Third slide">
							<div class="carousel-caption d-none d-md-block">
								<h4>canna-lily&nbsp;</h4>
								<p>Solid future</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleControls"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleControls"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
		<hr>
	</div>

	<div class="container" style="max-width: 100%; height: 71px;">
		<div class="row">
			<div class="col-lg-3">
				<br>
				<div class="dropdown" style="margin-top: 0%; width: 2500px;">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Sort By</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Color</a> <a
							class="dropdown-item" href="#">Price Range</a> <a
							class="dropdown-item" href="#">Newest</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</head>
<body>

	<section>
		<h3>Filter by</h3>
		<ul>
			<li class="active">All Menu</li>
			<li>POPULAR</li>
			<li>FORGIRL</li>
			<li>CHEAPDEAL</li>
			<li>BRANCHNEW</li>
		</ul>

		<div class="product">
			<a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/blue-hibiscus-1.jpg"
				data-filter="popular">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/abutilon.jpg" data-filter="popular">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/acacia.jpg" data-filter="popular">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/balloon-flower.jpg"
				data-filter="popular">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/bee-balm.jpg" data-filter="popular">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/bergenia.jpg" data-filter="forgirl">
			</a> <img src="Images-Products/flowers/mix/california-poppy.jpg"
				data-filter="forgirl"> <a href="goods.jsp"
				target="view_window"> <img
				src="Images-Products/flowers/mix/broom.jpg" data-filter="forgirl">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/colorful-pansies.jpg"
				data-filter="forgirl">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/daffodil.jpg" data-filter="forgirl">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/calendula.jpg"
				data-filter="cheapdeal">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/cyclamen.jpg"
				data-filter="cheapdeal">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/canna-lily.jpg"
				data-filter="cheapdeal">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/cape-leadwort.jpg"
				data-filter="cheapdeal">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/four-oclock-flower.jpg"
				data-filter="cheapdeal">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/flowering-dogwood.jpg"
				data-filter="cheapdeal">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/desert-rose.jpg"
				data-filter="branchnew">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/disa-uniflora.jpg"
				data-filter="branchnew">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/dotted-pink-cattleya.jpg"
				data-filter="branchnew">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/fall-crocus.jpg"
				data-filter="branchnew">
			</a> <a href="goods.jsp" target="view_window"> <img
				src="Images-Products/flowers/mix/forget-me-not-flower.jpg"
				data-filter="branchnew">
			</a>

		</div>
	</section>


	<script src="js/filter.js"></script>
	<jsp:include page="footer_menu.jsp" />
</body>
</html>